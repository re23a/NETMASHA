import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';

class ProfileContainersClickable extends StatelessWidget {
  const ProfileContainersClickable(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap});
  final Icon icon;
  final String title;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 330,
          height: 60,
          decoration: ShapeDecoration(
            color: lightPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(
                color: black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            leading: icon,
            trailing: Icon(Icons.arrow_forward_ios_sharp),
          ),
        ),
      ),
    );
  }
}