import 'package:flutter/material.dart';
import 'package:notesapp/constants/constants.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild(
      {super.key, required this.hint, this.maxlines = 1, required this.label});
  final String hint;
  final String label;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlines,
      textAlign: TextAlign.right,
      cursorColor: kprimarycolor,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(fontSize: 18, color: kprimarycolor),
        hintText: hint,
        hintStyle: const TextStyle(fontSize: 18),
        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(bordercolor: kprimarycolor),
      ),
    );
  }

  OutlineInputBorder buildborder({Color? bordercolor}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: bordercolor ?? Colors.white));
  }
}
