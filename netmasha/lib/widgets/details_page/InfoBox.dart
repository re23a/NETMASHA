import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({
    super.key,
    required this.chat,
    required this.location,
    required this.call,
  });
  final Function() chat;
  final Function() location;
  final Function() call;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: lightPurple,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(157, 158, 158, 158),
              blurRadius: 4,
              offset: Offset(4, 8),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: chat,
                  icon: Icon(
                    Icons.chat,
                    color: purple,
                  ),
                ),
                const Text("المحادثة")
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: location,
                  icon: Icon(
                    Icons.location_on_sharp,
                    color: purple,
                  ),
                ),
                const Text("عرض الموقع")
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: call,
                  icon: Icon(
                    Icons.phone,
                    color: purple,
                  ),
                ),
                const Text("اتصال")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
