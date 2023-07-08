import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/constants/constants.dart';
import 'package:notesapp/cubits/notes_cubit/add_notes_state.dart';
import 'package:notesapp/models/note_model.dart';

class NotesCubit extends Cubit<Notestates> {
  NotesCubit() : super(Notesintial());
  addnote(NoteModel note) async {
    emit(NotesAddLoadingState());
    try {
      var notesbox = Hive.box<NoteModel>(knotesbox);
      await notesbox.add(note);
      emit(NotesSucessAddingState());
    } catch (e) {
      emit(NotesFailAddState(e.toString()));
    }
  }
}
