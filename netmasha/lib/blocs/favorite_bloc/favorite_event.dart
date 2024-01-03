abstract class FavoriteEvent {
  final int id;
  FavoriteEvent({required this.id});
}

class AddFavoriteEvent extends FavoriteEvent {
  AddFavoriteEvent({required super.id});
}

class RemoveFavoriteEvent extends FavoriteEvent {
  RemoveFavoriteEvent({required super.id});
}
