import 'package:flutter/material.dart';
import 'package:netmasha/screens/login_screen.dart';
import 'package:netmasha/widgets/buttons.dart';
import 'package:netmasha/widgets/onboarding_widget.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/on1.png"))),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const TextOnboarding(
                  text:
                      'تصفح مختلف الأنشطة بمنطقتك و بمناطق أخرى للإستمتاع بأوقاتك'),
              const Spacer(),
              Button1(
                txt: 'التالي',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Onboarding1();
                  }));
                },
              ),
              const SizedBox(
                height: 37,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 166),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleIndex(
                      isActive: false,
                    ),
                    CircleIndex(
                      isActive: false,
                    ),
                    CircleIndex(
                      isActive: true,
                    )
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

// =======================1
class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/on2.png"))),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const TextOnboarding(
                  text:
                      "ابدأ بصناعة جدول مخصص يتناسب مع عددكم ومدة إقامتكم وتعرف على الميزانية المتوقعة"),
              const Spacer(),
              Button1(
                txt: 'التالي',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Onboarding2();
                  }));
                },
              ),
              const SizedBox(
                height: 37,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 166),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleIndex(
                      isActive: false,
                    ),
                    CircleIndex(
                      isActive: true,
                    ),
                    CircleIndex(
                      isActive: true,
                    )
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

// ===========================2
class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/on3.png"))),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const TextOnboarding(
                  text:
                      "و كمقدم تجربة يمكنك نشر تجارب منشأتك لقائمة التجارب و عرضها للمستكشفين"),
              const Spacer(),
              Button1(
                txt: 'التالي',
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                    (route) => false,
                  );
                },
              ),
              const SizedBox(
                height: 37,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 166),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleIndex(
                      isActive: true,
                    ),
                    CircleIndex(
                      isActive: true,
                    ),
                    CircleIndex(
                      isActive: true,
                    )
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
