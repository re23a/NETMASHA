import 'package:flutter/material.dart';
import 'package:netmasha/screens/messages_screen.dart';

class Chat extends StatelessWidget {
  const Chat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MessagesScreen()));
            },
            icon: Image.asset("assets/fluent_people-chat-20-regular.png")),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
