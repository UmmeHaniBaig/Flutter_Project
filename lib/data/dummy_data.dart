import '../model/product.dart';

final List<Product> demoProducts = [
  const Product(
    id: 'f1',
    name: 'Burger',
    category: 'Fast Food',
    price: 5.99,
    rating: 4.5,
    imageUrl:
        'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=400',
    description: 'Juicy grilled beef burger with cheese, lettuce and tomato.',
    isHot: true,
  ),
  const Product(
    id: 'f2',
    name: 'Pizza',
    category: 'Fast Food',
    price: 8.99,
    rating: 4.7,
    imageUrl:
        'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=400',
    description: 'Cheesy pepperoni pizza baked in a wood-fired oven.',
    isHot: true,
  ),
  const Product(
    id: 'f3',
    name: 'Pasta',
    category: 'Italian',
    price: 6.49,
    rating: 4.3,
    imageUrl: 'https://images.unsplash.com/photo-1551183053-bf91a1d81141?w=400',
    description: 'Creamy white sauce pasta topped with parmesan.',
  ),
  const Product(
    id: 'f4',
    name: 'Fried Chicken',
    category: 'Fast Food',
    price: 7.49,
    rating: 4.4,
    imageUrl:
        'https://images.unsplash.com/photo-1626645738196-c2a7c87a8f58?w=400',
    description: 'Crispy golden fried chicken pieces, served hot.',
  ),
  const Product(
    id: 'f5',
    name: 'Sushi',
    category: 'Japanese',
    price: 9.99,
    rating: 4.8,
    imageUrl:
        'https://images.unsplash.com/photo-1579584425555-c3ce17fd4351?w=400',
    description: 'Fresh assorted sushi rolls with salmon and avocado.',
    isHot: true,
  ),
  const Product(
    id: 'f6',
    name: 'Ice Cream',
    category: 'Dessert',
    price: 3.99,
    rating: 4.2,
    imageUrl:
        'https://images.unsplash.com/photo-1497034825429-c343d7c6a68f?w=400',
    description: 'Creamy vanilla ice cream with chocolate drizzle.',
  ),
];
