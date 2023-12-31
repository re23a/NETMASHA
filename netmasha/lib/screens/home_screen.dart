import 'package:flutter/material.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/home_page/activities.dart';
import 'package:netmasha/widgets/home_page/advertisements_oard.dart';
import 'package:netmasha/widgets/home_page/chat_button.dart';
import 'package:netmasha/widgets/home_page/logo.dart';
import 'package:netmasha/widgets/home_page/organizations.dart';
import 'package:netmasha/widgets/home_page/title_widget.dart';
import 'package:netmasha/widgets/home_page/user_name_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Stack(children: [
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
                  child: const SafeArea(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  LogoLeading(),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  UserNameWidget(),
                                ],
                              ),
                              Chat()
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 120),
                  child: AdvertisementsBoard(),
                ),
              ]),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleWidget(txt: 'ابرز الأنشطة'),
                    Activities(),
                    TitleWidget(txt: 'ابرز الجهات'),
                    Organizations()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
