import 'package:flutter/material.dart';
import 'package:netmasha/widgets/EventsContainer.dart';

class CurrentReservations extends StatelessWidget {
  const CurrentReservations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          // Center(
          //     child: Opacity(
          //         opacity: 0.50,
          //         child: Column(
          //           children: [
          //             SizedBox(
          //                 height: 300,
          //                 width: 300,
          //                 child: Image.asset("assets/No data-cuate.png")),
          //             const Text(
          //               "لا يوجد حجوزات حالية",
          //               style: TextStyle(fontSize: 18),
          //             )
          //           ],
          //         )))
          EventsContainer(
              image: "assets/amazing-young-cowgirl-sitting-horse-outdoors.jpg",
              title: 'ركوب الخيل ',
              description:
                  'تجربة فريدة لركوب الخيل مع العائلة في اسطبل خاص يمنحك تجربة متميزة'),
        ],
      ),
    );
  }
}
