import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/chapters_screen.dart';

import '../isar_repository.dart';
import '../models/subject_model.dart';
// import 'chapters_screen.dart'; // Uncomment if you have this file

class SubjectsScreen extends StatefulWidget {
  final IsarRepository repo;
  const SubjectsScreen({super.key, required this.repo});

  @override
  State<SubjectsScreen> createState() => _SubjectsScreenState();
}

class _SubjectsScreenState extends State<SubjectsScreen> {
  // We use a Future to track the status of the download/load process
  late Future<List<SubjectModel>> _loadingFuture;

  @override
  void initState() {
    super.initState();
    _loadingFuture = _initData();
  }

  // This method chains the download and the fetching of subjects
  Future<List<SubjectModel>> _initData() async {
    // 1. Trigger the download and processing (previously in main.dart)
    // Note: Using downloadAndProcessJson as defined in the repository
    await widget.repo.downloadAndProcessJson();

    // 2. Once finished, fetch the subjects to display
    return widget.repo.getSubjects();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('📘 Subjects')),
      body: FutureBuilder<List<SubjectModel>>(
        future: _loadingFuture,
        builder: (context, snapshot) {
          // 1. Loading State (Downloading JSON...)
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 16),
                  Text("Downloading & Processing Data..."),
                ],
              ),
            );
          }

          // 2. Error State
          if (snapshot.hasError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Error loading data:\n${snapshot.error}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            );
          }

          // 3. Empty State
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No subjects found.'));
          }

          // 4. Success State
          final subjects = snapshot.data!;
          return ListView.builder(
            itemCount: subjects.length,
            itemBuilder: (context, index) {
              final subject = subjects[index];
              return ListTile(
                leading: const Icon(Icons.book),
                title: Text(subject.name ?? 'Unknown Subject'),
                trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
                onTap: () {
                  // Navigate to Chapters
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChaptersScreen(
                        repo: widget.repo,
                        subjectId: subject.ahSubjectId ?? 0,
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
  }
}
