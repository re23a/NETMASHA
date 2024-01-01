abstract class TableState {
  final int adult;
  final int child;
  TableState({required this.adult, required this.child});
}

class InitialState extends TableState {
  InitialState({required super.adult, required super.child});
}

class AdultState extends TableState {
  AdultState({required super.adult, required super.child});
}

class ChildState extends TableState {
  ChildState({required super.adult, required super.child});
}
