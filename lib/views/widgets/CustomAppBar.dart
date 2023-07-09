import 'package:flutter/material.dart';

import 'package:notesapp/views/widgets/Customicon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar(
      {super.key, required this.text, required this.icon, this.onpressed});
  final String text;
  final IconData icon;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 24),
        ),
        const Spacer(),
        Customicon(
          onpressed: onpressed,
          icon: icon,
        )
      ],
    );
  }
}
