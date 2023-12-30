import 'package:flutter/material.dart';
import 'package:netmasha/screens/chat_screen.dart';
import 'package:netmasha/screens/payment_screen.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/buttons.dart';
import 'package:netmasha/widgets/details_page/ArrowBack.dart';
import 'package:netmasha/widgets/details_page/DescriptionBox.dart';
import 'package:netmasha/widgets/details_page/InfoBox.dart';
import 'package:netmasha/widgets/details_page/image_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      bottomSheet: Container(
        color: bg,
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button(
                txt: ' احجز الآن',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PaymentScreen()));
                },
                isBigButten: true),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Stack(
              children: [
                ActivityImage(
                  urlImage:
                      "assets/amazing-young-cowgirl-sitting-horse-outdoors.jpg",
                ),
                ArrowBack()
              ],
            ),
            const DescriptionBox(
              title: "ركوب الخيل",
              description:
                  'تجربة فريدة لركوب الخيل مع العائلة في اسطبل خاص يمنحك تجربة متميزة\nتجربة فريدة لركوب الخيل مع العائلة في اسطبل خاص يمنحك تجربة متميزةتجربة فريدة لركوب الخيل مع العائلة في اسطبل خاص يمنحك تجربة متميزةتجربة فريدة لركوب الخيل مع العائلة في اسطبل خاص يمنحك تجربة متميزة',
              adults: '400 ر.س',
              children: '400 ر.س',
            ),
            InfoBox(
              chat: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChatScreen()));
              },
              location: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChatScreen()));
              },
              call: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChatScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
