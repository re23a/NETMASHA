import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netmasha/blocs/favorite_bloc/favorite_event.dart';
import 'package:netmasha/blocs/favorite_bloc/favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  List<int> favorites = [];
  FavoriteBloc() : super(GetFavorites(favorites: [])) {
    on<AddFavoriteEvent>((event, emit) {
      favorites.add(event.id);
      emit(GetFavorites(favorites: favorites));
    });

    on<RemoveFavoriteEvent>((event, emit) {
      favorites.remove(event.id);
      emit(GetFavorites(favorites: favorites));
    });
  }
}
