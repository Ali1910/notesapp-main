import 'package:notesapp/models/note_model.dart';

abstract class NotesCubitStates {}

class initialstate extends NotesCubitStates {}

class NotesLoadingState extends NotesCubitStates {}

class NotesSuccessState extends NotesCubitStates {
  final List<NoteModel> note;
  NotesSuccessState(this.note);
}

class NotesFailState extends NotesCubitStates {
  final String errormessage;
  NotesFailState(this.errormessage);
}
