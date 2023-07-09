import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubits/NotesCubit/NotesCubit.dart';
import 'package:notesapp/views/widgets/CustomAppBar.dart';
import 'package:notesapp/views/widgets/CustomNotelistview.dart';

class NotesViewbody extends StatefulWidget {
  const NotesViewbody({super.key});

  @override
  State<NotesViewbody> createState() => _NotesViewbodyState();
}

class _NotesViewbodyState extends State<NotesViewbody> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<Notescubit>(context).fetchallnote();
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
