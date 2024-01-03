import 'package:flutter/material.dart';
import 'package:netmasha/models/experience_model.dart';
import 'package:netmasha/styles/colors.dart';

class ResultContainer extends StatelessWidget {
  const ResultContainer(
      {super.key,
      required this.experience,
      required this.adults,
      required this.children});
  final ExperienceModel experience;
  final int adults;
  final int children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width,
        decoration: ShapeDecoration(
          color: lightPurple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.05),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                experience.photoUrl.toString(),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    experience.title.toString(),
                    style: TextStyle(
                      color: black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "${experience.adultPrice! * adults + experience.childPrice! * children} ر.س",
                    style: const TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
