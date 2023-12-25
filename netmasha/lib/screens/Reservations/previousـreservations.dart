import 'package:flutter/material.dart';

class PreviousReservations extends StatelessWidget {
  const PreviousReservations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
              child: Opacity(
                  opacity: 0.50,
                  child: Column(
                    children: [
                      SizedBox(
                          height: 300,
                          width: 300,
                          child: Image.asset("assets/No data-cuate.png")),
                      const Text(
                        "لا يوجد حجوزات سابقة",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}
