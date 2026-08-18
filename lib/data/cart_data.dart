import 'package:flutter/material.dart';
import '../model/cart_item.dart';
import '../model/product.dart';

// This class keeps track of everything in the cart (the shopping bag).
// It "extends ChangeNotifier", a built-in Flutter class that lets a
// screen listen for changes and rebuild itself automatically.
class CartModel extends ChangeNotifier {
  // The list of items currently in the cart. Starts empty.
  final List<CartItem> _items = [];

  // Lets other files read the list (but not accidentally change it).
  List<CartItem> get items => _items;

  // Adds up every item's quantity, e.g. 2 burgers + 1 fries = 3.
  int get itemCount {
    int count = 0;
    for (var item in _items) {
      count = count + item.quantity;
    }
    return count;
  }

  // Adds up the price of everything in the cart.
  double get total {
    double sum = 0;
    for (var item in _items) {
      sum = sum + item.lineTotal;
    }
    return sum;
  }

  // Call this when the user taps "Add to Cart".
  void add(Product product) {
    // First, check if this product is already in the cart.
    for (var item in _items) {
      if (item.product.id == product.id) {
        // Already in the cart — just bump the quantity up by 1.
        item.quantity = item.quantity + 1;
        notifyListeners();
        return;
      }
    }
    // Wasn't in the cart yet — add it as a brand new item.
    _items.add(CartItem(product: product));
    notifyListeners();
  }

  // Call this when the user taps the "+" button in the cart.
  void increment(String productId) {
    for (var item in _items) {
      if (item.product.id == productId) {
        item.quantity = item.quantity + 1;
        notifyListeners();
        return;
      }
    }
  }

  // Call this when the user taps the "-" button in the cart.
  void decrement(String productId) {
    for (var item in _items) {
      if (item.product.id == productId) {
        item.quantity = item.quantity - 1;
        // If the quantity drops to 0, remove the item completely.
        if (item.quantity <= 0) {
          _items.remove(item);
        }
        notifyListeners();
        return;
      }
    }
  }
}

class CartScope extends InheritedNotifier<CartModel> {
  const CartScope({super.key, required CartModel cart, required super.child})
      : super(notifier: cart);

  // Any screen can grab the shared cart like this:
  //   final cart = CartScope.of(context);
  static CartModel of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<CartScope>();
    return scope!.notifier!;
  }
}
