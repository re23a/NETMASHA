import 'package:flutter/material.dart';
import 'package:netmasha/api/experience.dart';
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
      appBar: AppBar(
        backgroundColor: purple,
        actions: const [Chat()],
        leading: const LogoLeading(),
        title: const UserNameWidget(),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(14),
            bottomRight: Radius.circular(14),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              const Center(
                child: AdvertisementsBoard(),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleWidget(txt: 'ابرز الأنشطة'),
                    SizedBox(
                      height: 320,
                      child: FutureBuilder(
                          future: Experience().getView(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return ListView.separated(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return Activities(
                                        experience: snapshot.data![index]);
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(width: 16);
                                  });
                            }
                            return Center(
                                child:
                                    CircularProgressIndicator(color: purple));
                          }),
                    ),
                    const TitleWidget(txt: 'ابرز الجهات'),
                    const Organizations()
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
