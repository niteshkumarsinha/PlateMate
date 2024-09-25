class CartModel extends ChangeNotifier {
  List<FoodItem> _items = [];

  List<FoodItem> get items => _items;

  void addItem(FoodItem item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(FoodItem item) {
    _items.remove(item);
    notifyListeners();
  }
}