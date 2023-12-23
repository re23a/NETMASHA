import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:netmasha/screens/onboarding.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSplashScreen.fadeIn(
          backgroundColor: const Color(0xff450F9D),
          childWidget: Image.asset("assets/Layer_1.png"),
          duration: const Duration(milliseconds: 4000),
          animationDuration: const Duration(milliseconds: 1000),
          onAnimationEnd: () => debugPrint("On Scale End"),
          nextScreen: const Onboarding()),
    );
  }
}
