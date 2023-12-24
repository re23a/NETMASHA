import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';

class ProviderContainer extends StatelessWidget {
  const ProviderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Container(
          width: 360,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(157, 158, 158, 158),
                blurRadius: 4,
                offset: Offset(4, 8),
              ),
            ],
            color: lightPurple,
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text(
              'يمكنك ان تصبح مقدم تجربة\n في تطبيق نتمشى   ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Image.asset("assets/Sunset-rafiki 1.png"),
            const Icon(Icons.arrow_forward_ios_sharp),
          ]),
        ),
      ),
    );
  }
}
