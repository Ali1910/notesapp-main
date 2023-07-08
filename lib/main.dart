import 'package:flutter/material.dart';
import 'package:notesapp/views/NotesViews.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark, fontFamily: 'IBM Plex Sans Arabic'),
      home: const NotesView(),
    );
  }
}
