abstract class TableEvent {
  final int number;

  TableEvent({required this.number});
}

class IncreaseAdult extends TableEvent {
  IncreaseAdult({required super.number});
}

class IncreaseChild extends TableEvent {
  IncreaseChild({required super.number});
}

class DecreaseAdult extends TableEvent {
  DecreaseAdult({required super.number});
}

class DecreaseChild extends TableEvent {
  DecreaseChild({required super.number});
}
