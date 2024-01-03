import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({
    super.key,
    required this.isIncrease,
    required this.onTap,
  });
  final bool isIncrease;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 35,
        height: 35,
        decoration: ShapeDecoration(
          color: const Color(0xFFF2EDFF),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        child: Center(child: isIncrease ? Icon(Icons.add) : Icon(Icons.remove)),
      ),
    );
  }
}
