import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.txt,
  });
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        txt,
        style: TextStyle(
          color: black,
          fontSize: 28,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
