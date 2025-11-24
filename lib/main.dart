import 'package:flutter/material.dart';
import 'isar_repository.dart';
import 'screens/subjects_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 1. Initialize Repository
  final repo = IsarRepository();
  await repo.init();

  // Note: loadJson/downloadAndProcessJson call removed from here.
  // It is now handled in SubjectsScreen.

  runApp(MyApp(repo: repo));
}

class MyApp extends StatelessWidget {
  final IsarRepository repo;
  const MyApp({super.key, required this.repo});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Isar JSON Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: SubjectsScreen(repo: repo),
    );
  }
}
