import 'package:flutter/material.dart';
import 'package:netmasha/screens/result_screen.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/buttons.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 6,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      'عدد الأشخاص',
                      style: TextStyle(
                        color: black,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.person),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'عدد البالغين',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: purple,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF2EDFF),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            child: const Center(child: Text("+")),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text("0"),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF2EDFF),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            child: const Center(child: Text("-")),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.child_care),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'عدد الاطفال',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: purple,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF2EDFF),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            child: const Center(child: Text("+")),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text("0"),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF2EDFF),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            child: const Center(child: Text("-")),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      'التاريخ',
                      style: TextStyle(
                        color: black,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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
