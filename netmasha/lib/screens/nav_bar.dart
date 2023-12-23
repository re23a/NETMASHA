import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:netmasha/screens/home_screen.dart';
import 'package:netmasha/screens/location_screen.dart';
import 'package:netmasha/screens/profile_screen.dart';
import 'package:netmasha/screens/reservation_screen.dart';
import 'package:netmasha/screens/table_screen.dart';
import 'package:floating_navbar/floating_navbar.dart';
import 'package:netmasha/styles/colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return FloatingNavBar(
      resizeToAvoidBottomInset: false,
      color: purple,
      selectedIconColor: Colors.white,
      unselectedIconColor: Colors.white.withOpacity(0.6),
      items: [
        FloatingNavBarItem(
            iconData: Icons.home_outlined,
            page: const HomeScreen(),
            title: 'الرئيسية'),
        FloatingNavBarItem(
            iconData: Icons.location_on_outlined,
            page: const LocationScreen(),
            title: 'استكشف'),
        FloatingNavBarItem(
            iconData: Icons.padding_outlined,
            page: const TableScreen(),
            title: 'احسبها'),
        FloatingNavBarItem(
            iconData: Icons.folder_copy_outlined,
            page: const ReservationScreen(),
            title: 'حجوزاتي'),
        FloatingNavBarItem(
            iconData: Icons.person_2_outlined,
            page: const ProfileScreen(),
            title: 'حسابي'),
      ],
      horizontalPadding: 10.0,
      hapticFeedback: true,
      showTitle: true,
    );
  }
}
