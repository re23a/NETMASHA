import 'package:flutter/material.dart';
import 'package:netmasha/screens/details_screen.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/buttons.dart';

class Activities extends StatelessWidget {
  const Activities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 280,
          height: 320,
          decoration: ShapeDecoration(
            color: lightPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  height: 160,
                  width: 260,
                  decoration: ShapeDecoration(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Image.asset(
                    "assets/amazing-young-cowgirl-sitting-horse-outdoors.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ركوب الخيل ',
                      style: TextStyle(
                        color: black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'تجربة فريدة لركوب الخيل مع العائلة في اسطبل خاص يمنحك تجربة متميزة',
                      style: TextStyle(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                          txt: 'احجز',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen()));
                          },
                          isBigButten: false,
                          inHomePage: true,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
