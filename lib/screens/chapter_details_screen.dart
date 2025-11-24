import 'package:flutter/material.dart';
import '../isar_repository.dart';
import '../models/chapter_model.dart';
import '../models/topic_model.dart';
import '../models/video_model.dart';
import '../models/test_model.dart';
import '../models/resource_model.dart';

class ChapterDetailsScreen extends StatelessWidget {
  final IsarRepository repo;
  final int chapterId;

  const ChapterDetailsScreen({
    super.key,
    required this.repo,
    required this.chapterId,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ChapterModel?>(
      future: repo.getChapterByAhId(chapterId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        if (snapshot.hasError || !snapshot.hasData || snapshot.data == null) {
          return Scaffold(
            appBar: AppBar(title: const Text("Error")),
            body: const Center(child: Text("Chapter not found")),
          );
        }

        final chapter = snapshot.data!;

        return DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text('📚 ${chapter.name}'),
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.video_library), text: "Videos"),
                  Tab(icon: Icon(Icons.assignment), text: "Tests"),
                  Tab(icon: Icon(Icons.insert_drive_file), text: "Resources"),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                _buildTabContent(context, chapterId, ContentType.video),
                _buildTabContent(context, chapterId, ContentType.test),
                _buildTabContent(context, chapterId, ContentType.resource),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildTabContent(
    BuildContext context,
    int chapterId,
    ContentType type,
  ) {
    // We use Future.wait to fetch both Direct Content AND Topics concurrently
    // because we no longer store them inside the Chapter object.
    Future<List<dynamic>> directContentFuture;
    Future<List<TopicModel>> topicsFuture;

    switch (type) {
      case ContentType.video:
        directContentFuture = repo.getDirectChapterVideos(chapterId);
        topicsFuture = repo.getTopicsWithVideosByChapter(chapterId);
        break;
      case ContentType.test:
        directContentFuture = repo.getDirectChapterTests(chapterId);
        topicsFuture = repo.getTopicsWithTestsByChapter(chapterId);
        break;
      case ContentType.resource:
        directContentFuture = repo.getDirectChapterResources(chapterId);
        topicsFuture = repo.getTopicsWithResourcesByChapter(chapterId);
        break;
    }

    return FutureBuilder<List<dynamic>>(
      // Wait for BOTH the direct items list and the topics list
      future: Future.wait([directContentFuture, topicsFuture]),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (!snapshot.hasData || snapshot.data == null) {
          return const Center(child: Text("No data available"));
        }

        // Extract results
        final directItems = snapshot.data![0] as List<dynamic>;
        final topics = snapshot.data![1] as List<TopicModel>;

        if (directItems.isEmpty && topics.isEmpty) {
          return const Center(child: Text("No content found"));
        }

        return ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            // --- SECTION 1: DIRECT CHAPTER ITEMS ---
            if (directItems.isNotEmpty) ...[
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Chapter Overview",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Card(
                elevation: 2,
                margin: const EdgeInsets.only(bottom: 20),
                child: Column(
                  children: directItems.map((item) {
                    return ListTile(
                      leading: Icon(_getIconForType(type), color: Colors.blue),
                      title: Text(_getItemName(item)),
                      subtitle: const Text("Direct Chapter Content"),
                      onTap: () {
                        // Navigation logic
                      },
                    );
                  }).toList(),
                ),
              ),
            ],

            // --- SECTION 2: TOPICS ---
            if (topics.isNotEmpty) ...[
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Topics",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              ...topics.map((topic) {
                return _buildTopicTile(topic, type);
              }),
            ],
          ],
        );
      },
    );
  }

  Widget _buildTopicTile(TopicModel topic, ContentType type) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      // Optional: Adjust Card elevation or shape if you want it completely flat
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ExpansionTile(
        // -------------------------------------------------------
        // 👇 ADD THESE TWO LINES TO REMOVE THE BORDERS
        // -------------------------------------------------------
        shape: const Border(), // Removes border when expanded
        collapsedShape: const Border(), // Removes border when collapsed

        leading: const Icon(Icons.topic_outlined),
        title: Text(
          topic.name ?? 'Unknown Topic',
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        children: [
          FutureBuilder<List<dynamic>>(
            future: _fetchTopicContent(topic.ahTopicId!, type),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                );
              }
              if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const ListTile(title: Text("No items in this topic"));
              }

              return Column(
                children: snapshot.data!.map((item) {
                  return ListTile(
                    dense: true,
                    leading: const Icon(
                      Icons.subdirectory_arrow_right,
                      size: 18,
                    ),
                    title: Text(_getItemName(item)),
                    onTap: () {},
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }

  Future<List<dynamic>> _fetchTopicContent(int topicId, ContentType type) {
    switch (type) {
      case ContentType.video:
        return repo.getVideosByTopic(topicId);
      case ContentType.test:
        return repo.getTestsByTopic(topicId);
      case ContentType.resource:
        return repo.getResourcesByTopic(topicId);
    }
  }

  String _getItemName(dynamic item) {
    if (item is VideoModel) return item.videoName ?? 'Unknown Video';
    if (item is TestModel) return item.testTypeName ?? 'Unknown Test';
    if (item is ResourceModel) return item.resourceName ?? 'Unknown Resource';
    return 'Unknown Item';
  }

  IconData _getIconForType(ContentType type) {
    switch (type) {
      case ContentType.video:
        return Icons.play_circle_fill;
      case ContentType.test:
        return Icons.quiz;
      case ContentType.resource:
        return Icons.description;
    }
  }
}

enum ContentType { video, test, resource }
