abstract class DateState {
  final String date;

  DateState({required this.date});
}

class ChangeBookingDateState extends DateState {
  ChangeBookingDateState({required super.date});
}
