import 'package:flutter/material.dart';

const kprimarycolor = Color(0xff62fcd7);
const knotesbox = 'notesbox';
const List<Color> colors = [
  Color(0xff336373),
  Color(0xff40798C),
  Color(0xff70A9A1),
  Color(0xffCFD7C7),
  Color(0xffF6F1D1)
];
const SnackBar snackbar = SnackBar(
  backgroundColor: Colors.black,
  content: Padding(
    padding: EdgeInsets.all(16.0),
    child: Text(
      'note added successfully',
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
    ),
  ),
  duration: const Duration(seconds: 2),
);
