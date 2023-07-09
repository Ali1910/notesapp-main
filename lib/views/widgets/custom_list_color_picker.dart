import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem(
      {super.key, required this.ispicked, required this.backgroundColor});
  final bool ispicked;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ispicked
        ? CircleAvatar(
            backgroundColor: kprimarycolor,
            radius: 38,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: backgroundColor,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: backgroundColor,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemBuilder: ((context, index) {
          return GestureDetector(
            onTap: () {
              currentindex = index;
              setState(() {});
            },
            child: ColorItem(
              backgroundColor: colors[index],
              ispicked: currentindex == index,
            ),
          );
        }),
        itemCount: colors.length,
      ),
    );
  }
}
