import 'package:flutter/material.dart';
import '../model/product.dart';
import 'app_colors.dart';

class ProductThumb extends StatelessWidget {
  final Product product;
  final double size;

  const ProductThumb({super.key, required this.product, this.size = 48});

  @override
  Widget build(BuildContext context) {
    if (product.imageUrl != null) {
      return ClipOval(
        child: Image.asset(
          product.imageUrl!,
          width: size,
          height: size,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => _fallback(),
        ),
      );
    }
    return _fallback();
  }

  Widget _fallback() {
    return CircleAvatar(
      radius: size / 2,
      backgroundColor: AppColors.primary,
      child: Icon(
        product.icon ?? Icons.fastfood,
        color: product.iconColor,
        size: size * 0.45,
      ),
    );
  }
}
