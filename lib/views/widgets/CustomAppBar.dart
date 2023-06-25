import 'package:flutter/material.dart';

import 'package:notesapp/views/widgets/Customicon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
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
          icon: icon,
        )
      ],
    );
  }
}
