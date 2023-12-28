import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/ResultContainer.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'الجداول المقترحة',
              style: TextStyle(color: bg),
            ),
          ],
        ),
        backgroundColor: purple,
        iconTheme: IconThemeData(
          color: bg,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(14),
            bottomRight: Radius.circular(14),
          ),
        ),
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ResultContainer(
                title: 'زيارة اسطبل',
                price: '200 ر.س',
                image:
                    "assets/amazing-young-cowgirl-sitting-horse-outdoors.jpg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
