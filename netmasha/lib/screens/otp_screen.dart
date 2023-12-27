import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netmasha/blocs/auth_bloc/auth_bloc.dart';
import 'package:netmasha/blocs/auth_bloc/auth_event.dart';
import 'package:netmasha/blocs/auth_bloc/auth_state.dart';
import 'package:netmasha/screens/nav_bar.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/buttons.dart';
import 'package:netmasha/widgets/text_field.dart';

class OtpScreen extends StatelessWidget {
  final String userEmail; // Variable to store the user's email
  final List<TextEditingController> otpControllers =
      List.generate(6, (_) => TextEditingController());

  OtpScreen({super.key, required this.userEmail});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthOTPSuccessState) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    NavBar()), // Assuming NavBar is your next screen
            (route) => false,
          );
        } else if (state is AuthOTPErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMsg)),
          );
        }
      },
      child: Scaffold(
        backgroundColor: bg, // Make sure bg is a defined color
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black, // Replace with your preferred color
          ),
          backgroundColor: Colors.purple, // Replace with your preferred color
          title: Image.asset(
              "assets/l.png"), // Replace with your actual asset path
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(14),
              bottomRight: Radius.circular(14),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              const Text(
                "الرجاء ادخال رمز التحقق للمتابعة",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              const Text(
                "المرسل على البريد الالكتروني التالي",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              Text(
                userEmail, // Display the user's email
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(6, (index) {
                  return OtpTextField(controller: otpControllers[index]);
                }),
              ),
              const SizedBox(height: 24),
              Button(
                txt: 'تحقق',
                isBigButten: true,
                onTap: () {
                  final otpCode = otpControllers.map((c) => c.text).join();
                  context.read<AuthBloc>().add(OTPEvent(
                      otpCode: otpCode,
                      email: userEmail,
                      type:
                          "type")); // Assuming type is necessary for your logic
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
