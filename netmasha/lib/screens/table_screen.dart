import 'package:flutter/material.dart';
import 'package:netmasha/screens/result_screen.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/Reservations/countre.dart';
import 'package:netmasha/widgets/buttons.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EasyDateTimeLine(
                    initialDate: DateTime.now(),
                    onDateChange: (selectedDate) {},
                    activeColor: green,
                    locale: 'ar',
                    dayProps: EasyDayProps(
                      todayHighlightStyle: TodayHighlightStyle.withBackground,
                      todayHighlightColor: lightGreen,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'عدد الأشخاص',
                    style: TextStyle(
                      color: black,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'عدد البالغين',
                        style: TextStyle(
                          color: purple,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CounterButton(
                            isIncrease: true,
                            onTap: () {},
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text("0"),
                          const SizedBox(
                            width: 8,
                          ),
                          CounterButton(
                            isIncrease: false,
                            onTap: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'عدد الاطفال',
                        style: TextStyle(
                          color: purple,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CounterButton(
                            isIncrease: true,
                            onTap: () {},
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text("0"),
                          const SizedBox(
                            width: 8,
                          ),
                          CounterButton(
                            isIncrease: false,
                            onTap: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Button(
                  txt: 'ابحث',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultScreen()));
                  },
                  isBigButten: true)
            ],
          ),
        ),
      ),
    );
  }
}
