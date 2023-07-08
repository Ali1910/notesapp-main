abstract class AddNotestates {}

class Notesintial extends AddNotestates {}

class NotesAddLoadingState extends AddNotestates {}

class NotesSucessAddingState extends AddNotestates {}

class NotesFailAddState extends AddNotestates {
  final String errormessage;
  NotesFailAddState(this.errormessage);
}
