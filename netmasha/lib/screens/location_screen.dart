import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/ActivityLocation.dart';
import 'package:netmasha/widgets/location_widget.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'تصفح مواقع الأنشطة',
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
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: MediaQuery.of(context).size.height / 2.25,
                decoration: BoxDecoration(
                    color: lightPurple,
                    borderRadius: BorderRadius.circular(15)),
                child: const LocationWidget(latitude: 100, longitude: 100),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            children: const [
              ActivityLocation(
                title: 'صناعة الفخار',
              ),
            ],
          )
        ],
      ),
    );
  }
}
