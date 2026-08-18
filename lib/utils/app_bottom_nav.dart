import 'package:flutter/material.dart';
import '../routes/app_routes.dart';
import 'app_colors.dart';

/// Shared bottom navigation bar (home / search / cart / profile),
/// reused on every main screen so the four icons stay consistent.
class AppBottomNav extends StatelessWidget {
  final int currentIndex;

  const AppBottomNav({super.key, required this.currentIndex});

  void _go(BuildContext context, int index) {
    if (index == currentIndex) return;
    switch (index) {
      case 0:
        Navigator.of(context).pushReplacementNamed(AppRoutes.home);
        break;
      case 1:
        // Search lives on the home screen's search bar in this build.
        Navigator.of(context).pushReplacementNamed(AppRoutes.home);
        break;
      case 2:
        Navigator.of(context).pushNamed(AppRoutes.cart);
        break;
      case 3:
        Navigator.of(context).pushNamed(AppRoutes.profile);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final icons = [
      Icons.home,
      Icons.search,
      Icons.shopping_cart_outlined,
      Icons.person_outline,
    ];
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Color(0xFFEFEFEF))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(icons.length, (i) {
          final active = i == currentIndex;
          return IconButton(
            onPressed: () => _go(context, i),
            icon: Icon(
              icons[i],
              color: active ? AppColors.primary : AppColors.muted,
            ),
          );
        }),
      ),
    );
  }
}
