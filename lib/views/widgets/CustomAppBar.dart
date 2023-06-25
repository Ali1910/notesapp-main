import 'package:flutter/material.dart';

import 'package:notesapp/views/widgets/Customsearchicon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 24),
        ),
        Spacer(),
        CustomSearchicon()
      ],
    );
  }
}
