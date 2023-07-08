import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/add_notes_cubit.dart';
import 'package:notesapp/cubits/notes_cubit/add_notes_state.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/widgets/CustomButtom.dart';
import 'package:notesapp/views/widgets/CustomTextFeild.dart';

class addnoteform extends StatefulWidget {
  const addnoteform({
    super.key,
  });

  @override
  State<addnoteform> createState() => _addnoteformState();
}

class _addnoteformState extends State<addnoteform> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomTextFeild(
            onvsaved: (value) {
              title = value;
            },
            hint: ' enter note ',
            label: 'note address ',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFeild(
            onvsaved: (value) {
              subtitle = value;
            },
            hint: 'enter note description',
            label: ' enter note detial ',
            maxlines: 3,
          ),
          const SizedBox(
            height: 180,
          ),
          CustomButton(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var notemodel = NoteModel(
                    title: title!,
                    subtitle: subtitle!,
                    date: DateTime.now().toString(),
                    color: Colors.blue.value);
                BlocProvider.of<AddNotesCubit>(context).addnote(notemodel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 240,
          ),
        ],
      ),
    );
  }
}
