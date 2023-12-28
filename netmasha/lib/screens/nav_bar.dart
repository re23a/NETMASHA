import 'package:flutter/material.dart';
import 'package:netmasha/screens/Profile/profile_screen.dart';
import 'package:netmasha/screens/Reservations/reservation_screen.dart';
import 'package:netmasha/screens/home_screen.dart';
import 'package:netmasha/screens/location_screen.dart';
import 'package:netmasha/screens/table_screen.dart';
import 'package:netmasha/styles/colors.dart';

class NavBar extends StatefulWidget {
  NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<Widget> listScreens = [
    const HomeScreen(),
    const LocationScreen(),
    const TableScreen(),
    const ReservationScreen(),
    const ProfileScreen(),
  ];

  int indexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: purple,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: indexSelected,
        onTap: (screenIndex) {
          indexSelected = screenIndex;
          setState(() {});
        },
        selectedLabelStyle: TextStyle(fontSize: 10),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "الرئيسية"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.location_on_outlined,
              ),
              label: "اكتشف"),
          BottomNavigationBarItem(
              icon: Icon(Icons.padding_outlined), label: "احسبها"),
          BottomNavigationBarItem(
              icon: Icon(Icons.folder_copy_outlined), label: "حجوزاتي"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "حسابي"),
        ],
      ),
      body: listScreens[indexSelected],
    );
  }
}
