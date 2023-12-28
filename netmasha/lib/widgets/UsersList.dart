import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';

class UsersList extends StatelessWidget {
  const UsersList({
    super.key,
    required this.onTap,
    required this.name,
    required this.time,
  });
  final Function() onTap;
  final String name;
  final String time;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Container(
          height: 72,
          decoration: ShapeDecoration(
            color: lightPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 43,
                      height: 43,
                      decoration: ShapeDecoration(
                        color: green,
                        shape: const OvalBorder(),
                      ),
                      child: const Icon(Icons.person_outline_outlined),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      width: 150,
                      child: OverflowBox(
                        maxWidth: 150,
                        alignment: Alignment.centerRight,
                        child: Text(
                          name,
                          style: TextStyle(
                            color: black,
                            fontSize: 16.46,
                            fontWeight: FontWeight.w500,
                            overflow: TextOverflow.visible,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      time,
                      style: TextStyle(
                        color: purple,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}