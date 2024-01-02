import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netmasha/blocs/date_event.dart';
import 'package:netmasha/blocs/date_state.dart';

class DateBloc extends Bloc<DateEvent, DateState> {
  DateBloc()
      : super(ChangeBookingDateState(
            date:
                "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}")) {
    on<ChangeBookingDateEvent>((event, emit) {
      emit(ChangeBookingDateState(date: event.date));
    });
  }
}
