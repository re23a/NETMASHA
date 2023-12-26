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
          icon: const Icon(
            Icons.chat_outlined,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
