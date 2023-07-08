import 'package:bloc/bloc.dart';
import 'package:notesapp/cubits/notes_cubit/add_notes_state.dart';

class NotesCubit extends Cubit<Notestates> {
  NotesCubit() : super(Notesintial());
}
