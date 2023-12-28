import 'package:flutter/material.dart';
import 'package:netmasha/screens/Reservations/current%D9%80reservations.dart';
import 'package:netmasha/screens/Reservations/previous%D9%80reservations.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/tap_bar.dart';

class ReservationScreen extends StatelessWidget {
  const ReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: bg,
          appBar: AppBar(
            backgroundColor: purple,
            title: Align(
              alignment: Alignment.topRight,
              child: Text(
                "حجوزاتي",
                style: TextStyle(color: bg),
              ),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
            ),
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(70.0),
              child: TapBarSwitcher(),
            ),
          ),
          body: const TabBarView(children: [
            Center(child: CurrentReservations()),
            Center(child: PreviousReservations())
          ])),
    );
  }
}
