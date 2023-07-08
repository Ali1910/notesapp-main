import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/CustomButtom.dart';
import 'package:notesapp/views/widgets/CustomTextFeild.dart';

class addnoteform extends StatefulWidget {
  const addnoteform({
    super.key,
  });

  @override
  State<addnoteform> createState() => _addnoteformState();
}

class _addnoteformState extends State<addnoteform> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomTextFeild(
            onvsaved: (value) {
              title = value;
            },
            hint: ' enter note ',
            label: 'note address ',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFeild(
            onvsaved: (value) {
              subtitle = value;
            },
            hint: 'enter note description',
            label: ' enter note detial ',
            maxlines: 3,
          ),
          const SizedBox(
            height: 180,
          ),
          CustomButton(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 240,
          ),
        ],
      ),
    );
  }
}
