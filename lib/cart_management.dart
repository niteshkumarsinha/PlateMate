class CartModel extends ChangeNotifier {
  List<FoodItem> _items = [];

  List<FoodItem> get items => _items;

  double get totalPrice => _items.fold(0, (sum, item) => sum + item.price);

  void addItem(FoodItem item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(FoodItem item) {
    _items.remove(item);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}