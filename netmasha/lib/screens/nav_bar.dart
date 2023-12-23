import 'package:flutter/material.dart';
import 'package:netmasha/screens/home_screen.dart';
import 'package:netmasha/screens/location_screen.dart';
import 'package:netmasha/screens/profile_screen.dart';
import 'package:netmasha/screens/subscriptions_screen.dart';
import 'package:netmasha/screens/table_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBar> {
  PageController? controller = PageController();
  List<Widget> listScreens = [
    const HomeScreen(),
    const LocationScreen(),
    const TableScreen(),
    const SubscriptionsScreen(),
    const ProfileScreen()
  ];
  int indexSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: indexSelected,
        onTap: (screenIndex) {
          indexSelected = screenIndex;
          setState(() {});
        },
        selectedLabelStyle: const TextStyle(fontSize: 14),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.location_on_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.table_chart_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
      body: listScreens[indexSelected],
    );
  }
}
