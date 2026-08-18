import 'package:flutter/material.dart';
import '../model/product.dart';

class DummyData {
  static const List<String> categories = ["Ice Cream", "Burger", "Pizza"];

  static const Map<String, IconData> categoryIcons = {
    "Ice Cream": Icons.icecream,
    "Burger": Icons.lunch_dining,
    "Pizza": Icons.local_pizza,
  };

  static final List<Product> products = [
    const Product(
      id: "p1",
      name: "Beef Burger",
      description:
          "Big juicy beef burger with cheese, lettuce, tomato, onions and special sauce!",
      price: 70,
      rating: 4.8,
      category: "Burger",
      imageUrl: "assets/images/beef_burger.png",
    ),
    const Product(
      id: "p2",
      name: "Fries",
      description: "Crispy golden fries, salted and served hot.",
      price: 70,
      rating: 4.6,
      category: "Burger",
      imageUrl: "assets/images/fries.png",
    ),
    const Product(
      id: "p3",
      name: "Pizza",
      description: "Classic cheese pizza with a crispy thin crust.",
      price: 90,
      rating: 4.7,
      category: "Pizza",
      imageUrl: "assets/images/pizza.png",
    ),
    const Product(
      id: "p4",
      name: "Chicken Burger",
      description: "Grilled chicken breast burger with fresh veggies.",
      price: 65,
      rating: 4.5,
      category: "Burger",
      imageUrl: "assets/images/chicken_burger.png",
    ),
    const Product(
      id: "p5",
      name: "Sundae",
      description: "Vanilla ice cream sundae topped with chocolate syrup.",
      price: 40,
      rating: 4.9,
      category: "Ice Cream",
      imageUrl: "assets/images/sundae.png",
    ),
    const Product(
      id: "p6",
      name: "Chicken Burger",
      description: "Grilled chicken breast burger with fresh veggies.",
      price: 65,
      rating: 4.5,
      category: "Burger",
      imageUrl: "assets/images/chicken_burger.png",
    ),
  ];

  static final List<Product> addOns = [
    const Product(
        id: "a1",
        name: "Water",
        description: "Bottled water",
        price: 10,
        category: "Add-on",
        imageUrl: "assets/images/bottle.jpeg"),
    const Product(
      id: "a3",
      name: "Cheese",
      description: "Extra cheese slice",
      price: 8,
      category: "Add-on",
      imageUrl: "assets/images/cheese.jpeg",
      iconColor: Colors.amber,
    ),
    const Product(
      id: "a4",
      name: "Bun",
      description: "Extra bun",
      price: 6,
      category: "Add-on",
      imageUrl: "assets/images/bun.jpeg",
      iconColor: Colors.brown,
    ),
  ];
}
