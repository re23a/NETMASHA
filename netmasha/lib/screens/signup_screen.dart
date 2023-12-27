import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netmasha/blocs/auth_bloc/auth_bloc.dart';
import 'package:netmasha/blocs/auth_bloc/auth_event.dart';
import 'package:netmasha/blocs/auth_bloc/auth_state.dart';
import 'package:netmasha/screens/otp_screen.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/buttons.dart';
import 'package:netmasha/widgets/text_field.dart';

@override
class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthRegisterSuccessState) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OtpScreen()),
          );
        } else if (state is AuthRegisterErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMsg)),
          );
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: bg, // Ensure bg is a defined color
        appBar: AppBar(
          backgroundColor: bg, // Ensure bg is a defined color
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
                controller: confirmPasswordController,
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
                if (passwordController.text == confirmPasswordController.text) {
                  context.read<AuthBloc>().add(AuthRegisterEvent(
                        email: emailController.text,
                        password: passwordController.text,
                        name: nameController.text,
                        phone: phoneController.text,
                        confirmPassword: confirmPasswordController.text,
                      ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Passwords do not match')),
                  );
                }
              },
            ),
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                if (state is LoadingState) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CircularProgressIndicator(color: purple),
                  );
                }
                return Container();
              },
            )
          ],
        ),
      ),
    );
  }
}
