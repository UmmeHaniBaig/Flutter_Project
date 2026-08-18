import 'package:flutter/material.dart';

/// A single menu item.
///
/// [imageUrl] is a real product photo loaded from the network (a
/// plain https:// URL). [icon]/[iconColor] are an optional fallback —
/// used for things like add-on badges that don't have their own
/// photo — and are ignored whenever [imageUrl] is set.
class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final double rating;
  final String category;
  final bool isHot;
  final String? imageUrl;
  final IconData? icon;
  final Color iconColor;

  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.category,
    this.rating = 4.5,
    this.isHot = false,
    this.imageUrl,
    this.icon,
    this.iconColor = Colors.white,
  });
}
