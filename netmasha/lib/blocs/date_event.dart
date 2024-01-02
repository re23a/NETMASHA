abstract class DateEvent {
  final String date;

  DateEvent({required this.date});
}

class ChangeBookingDateEvent extends DateEvent {
  ChangeBookingDateEvent({required super.date});
}
