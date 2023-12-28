abstract class TableState {
  final int number;
  TableState({required this.number});
}

class InitialState extends TableState {
  InitialState({required super.number});
}

class AdultState extends TableState {
  AdultState({required super.number});
}

class ChildState extends TableState {
  ChildState({required super.number});
}
