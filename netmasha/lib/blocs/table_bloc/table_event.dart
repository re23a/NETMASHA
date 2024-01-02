abstract class TableEvent {
  final int adult;
  final int child;

  TableEvent({required this.adult, required this.child});
}

class IncreaseAdult extends TableEvent {
  IncreaseAdult({required super.adult, required super.child});
}

class IncreaseChild extends TableEvent {
  IncreaseChild({required super.adult, required super.child});
}

class DecreaseAdult extends TableEvent {
  DecreaseAdult({required super.adult, required super.child});
}

class DecreaseChild extends TableEvent {
  DecreaseChild({required super.adult, required super.child});
}

