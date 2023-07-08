import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/CustomAppBar.dart';
import 'package:notesapp/views/widgets/CustomTextFeild.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          CustomAppbar(
            text: 'edit notes',
            icon: Icons.edit,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextFeild(
            hint: ' add note ',
            label: 'note ',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFeild(
            hint: 'note description',
            label: '  note detials',
            maxlines: 3,
          ),
        ],
      ),
    );
  }
}
