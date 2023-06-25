import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/EditNotesViewBody.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNotesViewBody(),
    );
  }
}
