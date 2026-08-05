import 'package:flutter/material.dart';
import 'cart_data.dart';

class DetailScreen extends StatelessWidget {
  final Map<String, dynamic> food;
  const DetailScreen({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(food["name"])),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(food["name"], style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 10),
            Text("\$${food["price"]}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text(food["desc"]),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                cartItems.add(food);
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text("Added to cart")));
              },
              child: const Text("Add to Cart"),
            ),
          ],
        ),
      ),
    );
  }
}
