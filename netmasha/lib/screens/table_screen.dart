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
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                decoration: const ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-0.70, -0.71),
                    end: Alignment(0.7, 0.71),
                    colors: [Color(0xFF6235AD), Color(0xFF450F9D)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: EasyDateTimeLine(
                  initialDate: DateTime.now(),
                  onDateChange: (selectedDate) {},
                  activeColor: green,
                  locale: 'ar',
                  dayProps: EasyDayProps(
                    activeDayStyle: const DayStyle(
                        dayNumStyle: TextStyle(color: Colors.black),
                        dayStrStyle: TextStyle(color: Colors.black),
                        monthStrStyle: TextStyle(color: Colors.black)),
                    inactiveDayStyle: DayStyle(
                        dayNumStyle: TextStyle(color: bg),
                        dayStrStyle: TextStyle(color: bg),
                        monthStrStyle: TextStyle(color: bg)),
                    todayHighlightStyle: TodayHighlightStyle.withBackground,
                    todayHighlightColor: lightGreen,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
          ),
          const SizedBox(
            height: 50,
          ),
          Button(
              txt: 'ابحث',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResultScreen()));
              },
              isBigButten: true)
        ],
      ),
    );
  }
}
