class RestaurantCategory {
  final String name;
  final String imageUrl;

  RestaurantCategory({required this.name, required this.imageUrl});
}

List<RestaurantCategory> categories = [
  RestaurantCategory(name: 'Pizza', imageUrl: 'https://example.com/pizza_category.jpg'),
  RestaurantCategory(name: 'Burgers', imageUrl: 'https://example.com/burger_category.jpg'),
];

Widget buildCategoryList() {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: categories.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          // Filter restaurant list by category
        },
        child: Column(
          children: [
            Image.network(categories[index].imageUrl),
            Text(categories[index].name),
          ],
        ),
      );
    },
  );
}