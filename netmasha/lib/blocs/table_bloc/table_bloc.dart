import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netmasha/blocs/table_bloc/table_event.dart';
import 'package:netmasha/blocs/table_bloc/teble_state.dart';

class TableBloc extends Bloc<TableEvent, TableState> {
  TableBloc() : super(InitialState(number: 0)) {
    on<IncreaseAdult>((event, emit) => null);
    on<DecreaseAdult>((event, emit) => null);
    on<IncreaseChild>((event, emit) => null);
    on<DecreaseChild>((event, emit) => null);
  }
}
