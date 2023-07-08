import 'package:flutter/material.dart';
import 'package:notesapp/views/addnoteform.dart';
import 'package:notesapp/views/widgets/CustomButtom.dart';
import 'package:notesapp/views/widgets/CustomTextFeild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: addnoteform(),
      ),
    );
  }
}
