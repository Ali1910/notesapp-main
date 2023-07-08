import 'package:bloc/bloc.dart';
import 'package:notesapp/cubits/notes_cubit/add_notes_state.dart';
import 'package:notesapp/models/note_model.dart';

class NotesCubit extends Cubit<Notestates> {
  NotesCubit() : super(Notesintial());
  addnote(NoteModel notemodel) {}
}
