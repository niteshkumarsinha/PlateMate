class Restaurant {
  final String name;
  final String imageUrl;
  final String rating;

  Restaurant({required this.name, required this.imageUrl, required this.rating});
}

List<Restaurant> restaurants = [
  Restaurant(name: "Pizza Hut", imageUrl: "https://example.com/pizza.jpg", rating: "4.5"),
  Restaurant(name: "Burger King", imageUrl: "https://example.com/burger.jpg", rating: "4.2"),
];

Widget buildRestaurantList() {
  return ListView.builder(
    itemCount: restaurants.length,
    itemBuilder: (context, index) {
      return ListTile(
        leading: Image.network(restaurants[index].imageUrl),
        title: Text(restaurants[index].name),
        subtitle: Text("Rating: ${restaurants[index].rating}"),
      );
    },
  );
}