import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netmasha/blocs/auth_bloc/auth_bloc.dart';
import 'package:netmasha/blocs/auth_bloc/auth_event.dart';
import 'package:netmasha/screens/otp_screen.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/buttons.dart';
import 'package:netmasha/widgets/text_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: bg,
        title: const Text("حساب جديد"),
      ),
      body: Column(
        children: [
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
          CustomTextField(
              controller: passwordController,
              lableText: 'كلمة المرور',
              hintText: "****************",
              isPassword: true),
          CustomTextField(
              controller: passwordController,
              lableText: 'تأكيد كلمة المرور',
              hintText: "****************",
              isPassword: true),
          const SizedBox(
            height: 40,
          ),
          Button(
            txt: 'تسجيل',
            isBigButten: true,
            onTap: () {
              context.read<AuthBloc>().add(AuthRegisterEvent(
                  email: emailController.text,
                  password: passwordController.text,
                  name: nameController.text,
                  phone: phoneController.text,
                  confirmPassword: phoneController.text));
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => OtpScreen(
                          userEmail: '',
                        )),
              );
            },
          )
        ],
      ),
    );
  }
}
