import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netmasha/blocs/table_bloc/table_event.dart';
import 'package:netmasha/blocs/table_bloc/teble_state.dart';

class TableBloc extends Bloc<TableEvent, TableState> {
  TableBloc() : super(InitialState(adult: 0, child: 0)) {
    on<IncreaseAdult>((event, emit) {
      emit(AdultState(adult: event.adult + 1, child: event.child));
    });

    on<DecreaseAdult>((event, emit) {
      if (event.adult > 0) {
        emit(AdultState(adult: event.adult - 1, child: event.child));
      }
    });

    on<IncreaseChild>((event, emit) {
      emit(ChildState(child: event.child + 1, adult: event.adult));
    });

    on<DecreaseChild>((event, emit) {
      if (event.child > 0) {
        emit(ChildState(child: event.child - 1, adult: event.adult));
      }
    });
  }
}
