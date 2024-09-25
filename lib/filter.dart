class Filter {
  String name;
  bool isSelected;

  Filter({required this.name, this.isSelected = false});
}

List<Filter> filters = [
  Filter(name: 'Open Now'),
  Filter(name: 'Top Rated'),
  Filter(name: 'Cheap Eats'),
];

Widget buildFilters() {
  return Wrap(
    children: filters.map((filter) {
      return ChoiceChip(
        label: Text(filter.name),
        selected: filter.isSelected,
        onSelected: (bool selected) {
          // Apply filter logic
        },
      );
    }).toList(),
  );
}