import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubits/NotesCubit/Notesstates.dart';

class Notescubit extends Cubit<NotesCubitStates> {
  Notescubit() : super(initialstate());
}
