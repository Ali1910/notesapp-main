import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/views/widgets/CustomAppBar.dart';
import 'package:notesapp/views/widgets/CustomNotelistview.dart';

import '../../cubits/notes_cubits/NotesCubit/NotesCubit.dart';

class NotesViewbody extends StatefulWidget {
  const NotesViewbody({super.key});

  @override
  State<NotesViewbody> createState() => _NotesViewbodyState();
}

class _NotesViewbodyState extends State<NotesViewbody> {
  void initState() {
    BlocProvider.of<Notescubit>(context).fetchallnote();
    super.initState();
  }

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
            text: 'notes',
            icon: Icons.search,
          ),
          NotesListView(),
        ],
      ),
    );
  }
}
