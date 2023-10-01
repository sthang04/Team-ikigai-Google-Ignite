import 'package:flutter/foundation.dart';

class FavoritedItemsProvider extends ChangeNotifier {
  List<String> _favoritedItems = [];

  List<String> get favoritedItems => _favoritedItems;

  void addToFavorites(String item) {
    _favoritedItems.add(item);
    notifyListeners();
  }

  void removeFromFavorites(int index) {
    if (index >= 0 && index < _favoritedItems.length) {
      _favoritedItems.removeAt(index);
      notifyListeners();
    }
  }
}
