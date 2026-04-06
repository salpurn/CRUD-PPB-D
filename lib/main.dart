import 'package:crud_coba/models/note_database.dart';
import 'package:crud_coba/pages/notes_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() async {
  // Pastikan binding framework sudah siap
  WidgetsFlutterBinding.ensureInitialized();
  
  // Inisialisasi database Isar
  await NoteDatabase.initialize();

  runApp(
    ChangeNotifierProvider(
      create: (context) => NoteDatabase(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotesPage(), 
    );
  }
}