import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
              width: 40,
              height: 40,
              decoration: ShapeDecoration(
                color: bg,
                shape: const OvalBorder(),
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back,
                  color: purple,
                ),
              ))),
    );
  }
}
