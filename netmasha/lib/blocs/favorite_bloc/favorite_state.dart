abstract class FavoriteState {
  final List<int> favorites;

  FavoriteState({required this.favorites});
}

class GetFavorites extends FavoriteState {
  GetFavorites({required super.favorites});
}
