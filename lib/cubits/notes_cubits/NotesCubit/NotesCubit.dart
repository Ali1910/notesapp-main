import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/cubits/notes_cubits/NotesCubit/Notesstates.dart';

import '../../../constants/constants.dart';
import '../../../models/note_model.dart';

class Notescubit extends Cubit<NotesCubitStates> {
  Notescubit() : super(initialstate());

  fetchallnote() {
    emit(NotesLoadingState());
    try {
      var notesbox = Hive.box<NoteModel>(knotesbox);
      emit(NotesSuccessState(notesbox.values.toList()));
    } catch (e) {
      emit(NotesFailState(e.toString()));
    }
  }
}
