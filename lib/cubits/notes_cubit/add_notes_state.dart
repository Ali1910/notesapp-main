abstract class Notestates {}

class Notesintial extends Notestates {}

class NotesAddLoadingState extends Notestates {}

class NotesSucessAddingState extends Notestates {}

class NotesFailAddState extends Notestates {
  final String errormessage;
  NotesFailAddState(this.errormessage);
}
