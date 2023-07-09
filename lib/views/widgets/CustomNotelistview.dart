import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubits/NotesCubit/NotesCubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/widgets/CustomNoteItem.dart';

import '../../cubits/notes_cubits/NotesCubit/Notesstates.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<Notescubit, NotesCubitStates>(
        builder: (context, State) {
          List<NoteModel> notes =
              BlocProvider.of<Notescubit>(context).notes ?? [];
          return Padding(
            padding: const EdgeInsets.only(top: 16.0),
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
              itemCount: notes.length,
            ),
          );
        },
      ),
    );
  }
}
