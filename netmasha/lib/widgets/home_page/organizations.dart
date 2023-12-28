import 'package:flutter/material.dart';

class Organizations extends StatelessWidget {
  const Organizations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/Rectangle 736.png"),
          const SizedBox(
            width: 8,
          ),
          Image.asset("assets/Rectangle 735.png"),
          const SizedBox(
            width: 8,
          ),
          Image.asset("assets/iii.png"),
        ],
      ),
    );
  }
}