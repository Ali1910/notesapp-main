import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/cubits/notes_cubits/NotesCubit/Notesstates.dart';

import '../../../constants/constants.dart';
import '../../../models/note_model.dart';

class Notescubit extends Cubit<NotesCubitStates> {
  Notescubit() : super(initialstate());
  List<NoteModel>? notes;
  fetchallnote() {
    var notesbox = Hive.box<NoteModel>(knotesbox);
    notes = notesbox.values.toList();
    emit(NotesSucess());
  }
}
