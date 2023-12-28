import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';

class TapBarSwitcher extends StatelessWidget {
  const TapBarSwitcher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: const Color(0xffDBE0E9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: purple,
        unselectedLabelColor: Colors.grey,
        indicatorWeight: 3,
        tabs: const [
          Tab(text: "الحالية"),
          Tab(text: "السابقة"),
        ],
      ),
    );
  }
}