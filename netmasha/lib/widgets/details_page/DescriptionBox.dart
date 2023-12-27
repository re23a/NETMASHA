import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';

class DescriptionBox extends StatelessWidget {
  const DescriptionBox({
    super.key, required this.title, required this.description,
  });
  final String title;
    final String description;
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