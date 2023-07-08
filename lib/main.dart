import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/views/NotesViews.dart';

import 'constants/constants.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(knotesbox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Roboto Slab'),
      home: const NotesView(),
    );
  }
}
