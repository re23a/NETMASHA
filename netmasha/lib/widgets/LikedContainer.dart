import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';

class LikedContainer extends StatelessWidget {
  const LikedContainer({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });
  final String image;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        height: 140,
        decoration: ShapeDecoration(
          color: lightPurple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.84),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Container(
              clipBehavior: Clip.antiAlias,
              width: 120,
              height: 120,
              decoration: ShapeDecoration(
                color: Colors.black.withOpacity(0.27000001072883606),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.28),
                ),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: Text(
                    description,
                    style: TextStyle(
                      color: black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}