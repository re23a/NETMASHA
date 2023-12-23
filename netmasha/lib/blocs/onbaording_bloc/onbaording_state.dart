abstract class OnbaordingState {}

class CurrentOnbaordingState extends OnbaordingState {
  final int index;
  final String text;
  final String image;
  CurrentOnbaordingState(
      {required this.index, required this.text, required this.image});
}

class EndBoardingState extends OnbaordingState {}
