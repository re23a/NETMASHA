import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/buttons.dart';
import 'package:netmasha/widgets/text_field.dart';

class EditProfilePage extends StatelessWidget {
  EditProfilePage({super.key});
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: bg,
        ),
        backgroundColor: purple,
        title: Text(
          "اعدادات الحساب الشخصي",
          style: TextStyle(color: bg),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(14),
            bottomRight: Radius.circular(14),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            width: 101,
            height: 101,
            decoration: ShapeDecoration(
              color: lightPurple,
              shape: const OvalBorder(),
            ),
            child: Icon(
              Icons.person_outline_outlined,
              size: 60,
              color: green,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          CustomTextField(
            controller: nameController,
            lableText: 'الإسم',
            hintText: 'الرجاء ادخال الاسم',
          ),
          CustomTextField(
              controller: phoneController,
              lableText: 'رقم الجوال',
              hintText: "****05"),
          CustomTextField(
            controller: emailController,
            lableText: 'البريد الإلكتروني',
            hintText: 'gmail.com@********',
          ),
          const SizedBox(
            height: 40,
          ),
          Button(
            txt: 'حفظ',
            isBigButten: true,
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
