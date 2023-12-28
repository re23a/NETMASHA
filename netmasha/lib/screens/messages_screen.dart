import 'package:flutter/material.dart';
import 'package:netmasha/screens/chat_screen.dart';
import 'package:netmasha/styles/colors.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "الرسائل",
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
      body: Center(
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ChatScreen()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Container(
                  height: 72,
                  decoration: ShapeDecoration(
                    color: lightPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 43,
                              height: 43,
                              decoration: ShapeDecoration(
                                color: green,
                                shape: const OvalBorder(),
                              ),
                              child: const Icon(Icons.person_outline_outlined),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const SizedBox(
                              width: 150,
                              child: OverflowBox(
                                maxWidth: 150,
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'تجربة قطف الفراولة ',
                                  style: TextStyle(
                                    color: Color(0xFF3D454D),
                                    fontSize: 16.46,
                                    fontWeight: FontWeight.w500,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '9:36 AM',
                              style: TextStyle(
                                color: purple,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Icon(Icons.arrow_forward_ios),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
