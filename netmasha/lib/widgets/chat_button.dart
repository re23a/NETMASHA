import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.chat_outlined,
          color: Colors.white,
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }
}