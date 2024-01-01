import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netmasha/blocs/table_bloc/table_event.dart';
import 'package:netmasha/blocs/table_bloc/teble_state.dart';

class TableBloc extends Bloc<TableEvent, TableState> {
  TableBloc() : super(InitialState(number: 0)) {
    on<IncreaseAdult>((event, emit) {
      emit(AdultState(number: event.number + 1));
    });

    on<DecreaseAdult>((event, emit) {
      if (event.number > 0) {
        emit(AdultState(number: event.number - 1));
      }
    });

    on<IncreaseChild>((event, emit) {
      emit(ChildState(number: event.number + 1));
    });

    on<DecreaseChild>((event, emit) {
      if (event.number > 0) {
        emit(ChildState(number: event.number - 1));
      }
    });
  }
}
