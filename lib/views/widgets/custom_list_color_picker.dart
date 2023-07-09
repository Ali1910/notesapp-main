import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notesapp/cubits/notes_cubits/add_notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';

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
              BlocProvider.of<AddNotesCubit>(context).color = colors[index];
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

class Editsnotescolorlist extends StatefulWidget {
  const Editsnotescolorlist({super.key, required this.note});
  final NoteModel note;

  @override
  State<Editsnotescolorlist> createState() => _EditsnotescolorlistState();
}

class _EditsnotescolorlistState extends State<Editsnotescolorlist> {
  late int currentindex;
  @override
  void initState() {
    // TODO: implement initState
    currentindex = colors.indexOf(Color(widget.note.color));
    super.initState();
  }

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
              widget.note.color = colors[currentindex].value;
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
