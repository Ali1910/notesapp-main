import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/constants/constants.dart';

import 'package:notesapp/cubits/notes_cubits/add_notes_cubit.dart';
import 'package:notesapp/cubits/notes_cubits/add_notes_state.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/widgets/CustomButtom.dart';
import 'package:notesapp/views/widgets/CustomTextFeild.dart';
import 'package:notesapp/views/widgets/custom_list_color_picker.dart';

class addnoteform extends StatefulWidget {
  const addnoteform({
    super.key,
  });

  @override
  State<addnoteform> createState() => _addnoteformState();
}

class _addnoteformState extends State<addnoteform> {
  @override
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
            maxlines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          const ColorListView(),
          const SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNotesCubit, AddNotestates>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: CustomButton(
                  isloading: state is NotesAddLoadingState ? true : false,
                  ontap: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      var currentdata = DateTime.now();
                      var currentdataformat =
                          DateFormat.yMd().format(currentdata);
                      var notemodel = NoteModel(
                          title: title!,
                          subtitle: subtitle!,
                          date: currentdataformat,
                          color: BlocProvider.of<AddNotesCubit>(context)
                              .color
                              .value);
                      BlocProvider.of<AddNotesCubit>(context)
                          .addnote(notemodel);
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
