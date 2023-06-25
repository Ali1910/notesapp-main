import 'package:flutter/material.dart';
import 'package:notesapp/constants/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kprimarycolor,
        borderRadius: BorderRadius.circular(8),
      ),
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: const Center(
        child: Text(
          'اضف',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
