import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';

class DescriptionBox extends StatelessWidget {
  const DescriptionBox({
    super.key,
    required this.title,
    required this.description,
    required this.adults,
    required this.children,
  });
  final String title;
  final String description;
  final String adults;
  final String children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Row(
                children: [
                  Text(
                    "البالغين:",
                    style: TextStyle(
                      color: black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 80,
                    height: 30,
                    decoration: ShapeDecoration(
                      color: lightPurple,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.5, color: green),
                        borderRadius: BorderRadius.circular(8.06),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        adults,
                        style: TextStyle(
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 12,
              ),
              Row(
                children: [
                  Text(
                    "الاطفال:",
                    style: TextStyle(
                      color: black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 80,
                    height: 30,
                    decoration: ShapeDecoration(
                      color: lightPurple,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.5, color: green),
                        borderRadius: BorderRadius.circular(8.06),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        children,
                        style: TextStyle(
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            description,
            style: TextStyle(
              color: black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
