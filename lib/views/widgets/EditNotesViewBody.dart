import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/CustomAppBar.dart';
import 'package:notesapp/views/widgets/CustomTextFeild.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          CustomAppbar(
            text: 'تعديل المهمة',
            icon: Icons.edit,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextFeild(
            hint: 'ادخل عنوان المهمة',
            label: 'العنوان ',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFeild(
            hint: 'ادخل وصف المهمة',
            label: ' تفاصيل المهة',
            maxlines: 3,
          ),
        ],
      ),
    );
  }
}
