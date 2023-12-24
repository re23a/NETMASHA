import 'package:flutter/material.dart';
import 'package:netmasha/screens/edit_proflie.dart';
import 'package:netmasha/screens/favorite_page.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:badges/badges.dart' as badges;
import 'package:netmasha/widgets/buttons.dart';
import 'package:netmasha/widgets/profile_containers.dart';
import 'package:netmasha/widgets/provider_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Column(
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
                  bottomLeft: Radius.circular(14),
                  bottomRight: Radius.circular(14),
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 101,
                    height: 101,
                    decoration: ShapeDecoration(
                      color: lightPurple,
                      shape: const OvalBorder(),
                    ),
                    child: Icon(
                      Icons.person_outline_outlined,
                      size: 60,
                      color: green,
                    ),
                  ),
                  badges.Badge(
                    badgeStyle:
                        badges.BadgeStyle(badgeColor: green, elevation: 0),
                    position: badges.BadgePosition.topEnd(
                      top: -20,
                    ),
                    showBadge: true,
                    ignorePointer: false,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfilePage()));
                    },
                    badgeContent: Icon(
                      Icons.edit,
                      color: bg,
                    ),
                    child: Container(
                      width: 101,
                      height: 45,
                      decoration: BoxDecoration(
                          color: lightPurple,
                          borderRadius: BorderRadius.circular(14)),
                      child: Center(
                        child: Text(
                          "userName",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              const ProviderContainer(),
              ProfileContainersClickable(
                icon: Icon(
                  Icons.favorite_border_rounded,
                  color: purple,
                ),
                title: 'المفضلة',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FavoritePage()));
                },
              ),
              ProfileContainersClickable(
                icon: Icon(
                  Icons.language,
                  color: purple,
                ),
                title: 'اللغة',
                onTap: () {
                  showDialog(
                      builder: (context) {
                        return SimpleDialog(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    'هل انت متأكد انك تريد تغيير اللغة؟',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  SimpleDialogOption(
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Button(
                                            txt: 'لا',
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            isBigButten: false,
                                          ),
                                          const SizedBox(width: 40),
                                          Button(
                                            txt: 'نعم',
                                            onTap: () {},
                                            isBigButten: false,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      },
                      context: context);
                },
              ),
              ProfileContainersClickable(
                icon: Icon(
                  Icons.exit_to_app_rounded,
                  color: purple,
                ),
                title: 'تسجيل الخروج',
                onTap: () {
                  showDialog(
                      builder: (context) {
                        return SimpleDialog(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    'هل انت متأكد انك تريد تسجيل الخروج؟',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  SimpleDialogOption(
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Button(
                                            txt: 'لا',
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            isBigButten: false,
                                          ),
                                          const SizedBox(width: 40),
                                          Button(
                                            txt: 'نعم',
                                            onTap: () {},
                                            isBigButten: false,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      },
                      context: context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
