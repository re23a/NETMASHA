import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netmasha/blocs/onbaording_bloc/onbaording_bloc.dart';
import 'package:netmasha/blocs/onbaording_bloc/onbaording_event.dart';
import 'package:netmasha/blocs/onbaording_bloc/onbaording_state.dart';
import 'package:netmasha/screens/login_screen.dart';
import 'package:netmasha/widgets/buttons.dart';
import 'package:netmasha/widgets/onboarding_widget.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: BlocConsumer<OnbaordingBloc, OnbaordingState>(
        listener: (context, state) {
          if (state is EndBoardingState) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
              (route) => false,
            );
          }
        },
        builder: (context, state) {
          if (state is CurrentOnbaordingState) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(state.image))),
              child: SafeArea(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    TextOnboarding(text: state.text),
                    const Spacer(),
                    Button(
                      txt: 'التالي',
                      isBigButten: false,
                      onTap: () {
                        context
                            .read<OnbaordingBloc>()
                            .add(ChangeOnbaording(state.index));
                      },
                    ),
                    const SizedBox(
                      height: 37,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 166),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleIndex(
                            isActive: state.index >= 2 ? true : false,
                          ),
                          CircleIndex(
                            isActive: state.index >= 1 ? true : false,
                          ),
                          CircleIndex(
                            isActive: state.index >= 0 ? true : false,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
