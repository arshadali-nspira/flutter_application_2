import 'package:flutter/material.dart';
import 'package:flutter_application_2/isar_repository.dart';
import '../models/subject_model.dart';
import 'chapters_screen.dart';

class SubjectsScreen extends StatelessWidget {
  final IsarRepository repo;
  const SubjectsScreen({super.key, required this.repo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('📘 Subjects')),
      body: FutureBuilder<List<SubjectModel>>(
        future: repo.getSubjects(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final subjects = snapshot.data!;
          return ListView.builder(
            itemCount: subjects.length,
            itemBuilder: (context, index) {
              final subject = subjects[index];
              return ListTile(
                leading: const Icon(Icons.book),
                title: Text(subject.name ?? ''),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChaptersScreen(
                        repo: repo,
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
