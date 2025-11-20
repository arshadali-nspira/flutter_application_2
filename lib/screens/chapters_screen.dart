import 'package:flutter/material.dart';
import '../isar_repository.dart';
import '../models/chapter_model.dart';
import '../models/subject_model.dart'; // We still need this for the type
import 'chapter_details_screen.dart';

class ChaptersScreen extends StatelessWidget {
  final IsarRepository repo;
  final int subjectId; // Changed from SubjectModel

  const ChaptersScreen({
    super.key,
    required this.repo,
    required this.subjectId, // Changed
  });

  @override
  Widget build(BuildContext context) {
    // We fetch the Subject *first* so we can show its name in the AppBar
    return FutureBuilder<SubjectModel?>(
      future: repo.getSubjectByAhId(subjectId),
      builder: (context, subjectSnapshot) {
        // 1. Loading State
        if (subjectSnapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        // 2. Error or Null State
        if (subjectSnapshot.hasError ||
            !subjectSnapshot.hasData ||
            subjectSnapshot.data == null) {
          return Scaffold(
            appBar: AppBar(title: const Text("Error")),
            body: const Center(child: Text("Subject not found")),
          );
        }

        // 3. Data Loaded State
        final subject = subjectSnapshot.data!;

        return Scaffold(
          appBar: AppBar(title: Text('📖 Chapters: ${subject.name}')),

          // Inner FutureBuilder to load the chapters for this subject
          body: FutureBuilder<List<ChapterModel>>(
            // We use the subjectId we already have
            future: repo.getChaptersBySubject(subjectId),
            builder: (context, chapterSnapshot) {
              if (!chapterSnapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }

              final chapters = chapterSnapshot.data!;

              if (chapters.isEmpty) {
                return const Center(child: Text("No chapters found."));
              }

              return ListView.builder(
                itemCount: chapters.length,
                itemBuilder: (context, index) {
                  final chapter = chapters[index];
                  return ListTile(
                    leading: const Icon(Icons.menu_book_rounded),
                    title: Text(chapter.name ?? ''),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChapterDetailsScreen(
                            repo: repo,
                            chapterId: chapter.ahChapterId ?? 0,
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
