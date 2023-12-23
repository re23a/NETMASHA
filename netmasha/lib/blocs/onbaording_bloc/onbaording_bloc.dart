import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netmasha/blocs/onbaording_bloc/onbaording_event.dart';
import 'package:netmasha/blocs/onbaording_bloc/onbaording_state.dart';

class OnbaordingBloc extends Bloc<OnbaordingEvent, OnbaordingState> {
  final List<String> texts = [
    'ابدأ بصناعة جدول مخصص يتناسب مع عددكم ومدة إقامتكم وتعرف على الميزانية المتوقعة',
    'و كمقدم تجربة يمكنك نشر تجارب منشأتك لقائمة التجارب و عرضها للمستكشفين'
  ];
  final List<String> images = ['assets/on2.png', 'assets/on3.png'];

  OnbaordingBloc()
      : super(CurrentOnbaordingState(
            index: 0,
            text: 'تصفح مختلف الأنشطة بمنطقتك و بمناطق أخرى للإستمتاع بأوقاتك',
            image: 'assets/on1.png')) {
    on<ChangeOnbaording>((event, emit) {
      if (event.index < texts.length) {
        emit(
          CurrentOnbaordingState(
            index: event.index + 1,
            text: texts[event.index],
            image: images[event.index],
          ),
        );
      } else {
        emit(EndBoardingState());
      }
    });
  }
}
