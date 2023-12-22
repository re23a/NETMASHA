import 'package:flutter/material.dart';

//  >> types of buttons
class Button1 extends StatelessWidget {
  const Button1({
    super.key,
    required this.txt,
    required this.onTap,
  });
  final String txt;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 41,
        decoration: ShapeDecoration(
          color: Color(0xFF3E0699),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Center(
          child: Text(
            txt,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

// =======================================================
class Button2 extends StatelessWidget {
  const Button2({
    super.key,
    required this.txt,
    required this.onTap,
  });
  final String txt;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 236,
        height: 41,
        decoration: ShapeDecoration(
          color: Color(0xFF3E0699),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Center(
          child: Text(
            txt,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}
