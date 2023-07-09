import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubits/NotesCubit/NotesCubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/widgets/CustomAppBar.dart';
import 'package:notesapp/views/widgets/CustomTextFeild.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          CustomAppbar(
            text: 'edit notes',
            icon: Icons.edit,
            onpressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              Navigator.pop(context);
              BlocProvider.of<Notescubit>(context).fetchallnote();
            },
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextFeild(
            onchaged: (value) {
              title = value;
            },
            hint: ' ${widget.note.title} ',
            label: 'note',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFeild(
            onchaged: (value) {
              content = value;
            },
            hint: ' ${widget.note.subtitle} ',
            label: 'note detials',
            maxlines: 3,
          ),
        ],
      ),
    );
  }
}
