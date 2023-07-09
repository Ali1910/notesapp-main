import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesapp/cubits/notes_cubits/add_notes_cubit.dart';
import 'package:notesapp/cubits/notes_cubits/add_notes_state.dart';
import 'package:notesapp/views/addnoteform.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotestates>(
        listener: (context, State) {
          if (State is NotesFailAddState) {
            print('failed ${State.errormessage.toString()}');
          }
          if (State is NotesSucessAddingState) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is NotesAddLoadingState ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(child: addnoteform()),
            ),
          );
        },
      ),
    );
  }
}
