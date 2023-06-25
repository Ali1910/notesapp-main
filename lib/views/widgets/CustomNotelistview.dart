import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/CustomNoteItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.separated(
          padding: EdgeInsets.zero,
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemBuilder: (context, index) {
            return const NoteItem();
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
