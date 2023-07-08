import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesapp/cubits/notes_cubit/add_notes_cubit.dart';
import 'package:notesapp/cubits/notes_cubit/add_notes_state.dart';
import 'package:notesapp/views/addnoteform.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BlocConsumer<AddNotesCubit, AddNotestates>(
        listener: (context, State) {
          if (State is NotesFailAddState) {
            print('failed ${State.errormessage.toString()}');
          }
          if (State is NotesFailAddState) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            child: const SingleChildScrollView(
              child: addnoteform(),
            ),
            inAsyncCall: state is NotesAddLoadingState ? true : false,
          );
        },
      ),
    );
  }
}
