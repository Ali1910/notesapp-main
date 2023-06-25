import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/CustomAppBar.dart';
import 'package:notesapp/views/widgets/CustomNotelistview.dart';

class NotesViewbody extends StatelessWidget {
  const NotesViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          CustomAppbar(
            text: 'المهمات',
            icon: Icons.search,
          ),
          NotesListView(),
        ],
      ),
    );
  }
}
