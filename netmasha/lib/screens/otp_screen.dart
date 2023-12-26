import 'package:flutter/material.dart';
import 'package:netmasha/screens/nav_bar.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/buttons.dart';
import 'package:netmasha/widgets/text_field.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});
  final otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: bg,
        ),
        backgroundColor: purple,
        title: Image.asset("assets/l.png"),
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
            const Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "الرجاء ادخال رمز التحقق للمتابعة",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "المرسل على البريد الالكتروني التالي",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "(gmil.com@********)",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OtpTextField(controller: otpController),
                OtpTextField(controller: otpController),
                OtpTextField(controller: otpController),
                OtpTextField(controller: otpController),
                OtpTextField(controller: otpController),
                OtpTextField(controller: otpController),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Button(
              txt: 'تحقق',
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => NavBar()),
                  (route) => false,
                );
              },
              isBigButten: true,
            )
          ],
        ),
      ),
    );
  }
}
