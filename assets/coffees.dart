// coffees.dart

class CoffeeType {
  final String name;
  final String type;
  final String image;
  bool isFavorite;

  CoffeeType({
    required this.name,
    required this.type,
    required this.image,
    this.isFavorite = false,
  });
}

List<CoffeeType> coffeeList = [
  CoffeeType(name: "Cappuccino", type: "Milky", image: "assets/cappuccino.jpg"),
  CoffeeType(name: "Latte", type: "Milky", image: "assets/latte.jpg"),
  CoffeeType(name: "Espresso", type: "Without Milk", image: "assets/espresso.jpg"),
  CoffeeType(name: "Matcha", type: "Special", image: "assets/matcha.jpg"),
];
