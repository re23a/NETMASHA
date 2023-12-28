import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';

class UserNameWidget extends StatelessWidget {
  const UserNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'اهلاً ريما',
              style: TextStyle(
                color: bg,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'اسفرت وانورت',
              style: TextStyle(
                color: bg,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}