import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/CustomButtom.dart';
import 'package:notesapp/views/widgets/CustomTextFeild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomTextFeild(
              hint: ' enter note ',
              label: 'note address ',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFeild(
              hint: 'enter note description',
              label: ' enter note detial ',
              maxlines: 3,
            ),
            SizedBox(
              height: 180,
            ),
            CustomButton(),
            SizedBox(
              height: 240,
            ),
          ],
        ),
      ),
    );
  }
}
