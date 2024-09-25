class FoodItem {
  final String name;
  final String imageUrl;
  final double price;

  FoodItem({required this.name, required this.imageUrl, required this.price});
}

List<FoodItem> foodItems = [
  FoodItem(name: "Cheese Pizza", imageUrl: "https://example.com/cheese_pizza.jpg", price: 8.99),
  FoodItem(name: "Vegan Burger", imageUrl: "https://example.com/vegan_burger.jpg", price: 9.99),
];

Widget buildFoodItemList() {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemCount: foodItems.length,
    itemBuilder: (context, index) {
      return Card(
        child: Column(
          children: [
            Image.network(foodItems[index].imageUrl),
            Text(foodItems[index].name),
            Text("\$${foodItems[index].price.toString()}"),
          ],
        ),
      );
    },
  );
}