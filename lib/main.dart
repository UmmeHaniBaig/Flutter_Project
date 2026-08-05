import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() => runApp(const FoodApp());

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
