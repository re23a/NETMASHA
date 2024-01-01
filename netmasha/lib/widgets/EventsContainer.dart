import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';

class EventsContainer extends StatelessWidget {
  const EventsContainer({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    this.isLike = false,
  });
  final String image;
  final String title;
  final String description;
  final bool isLike;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Stack(
        children: [
          Container(
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
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
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
          Visibility(
            visible: isLike ? true : false,
            child: Positioned(
                right: 310,
                bottom: 90,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.close,
                      color: Color.fromARGB(238, 219, 15, 0),
                    ))),
          )
        ],
      ),
    );
  }
}
