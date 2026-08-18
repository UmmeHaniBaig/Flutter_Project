import 'package:flutter/material.dart';

import 'data/cart_data.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'product_detail_screen.dart';
import 'profile_screen.dart';
import 'routes/app_routes.dart';
import 'signup_screen.dart';
import 'utils/app_colors.dart';
import 'utils/app_strings.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatefulWidget {
  const FoodApp({super.key});

  @override
  State<FoodApp> createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  // One cart, shared for the whole app's lifetime via CartScope.
  final CartModel _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    return CartScope(
      cart: _cart,
      child: MaterialApp(
        title: AppStrings.appName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColors.primary,
          scaffoldBackgroundColor: AppColors.background,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          fontFamily: null, // default system font — no third-party fonts
          useMaterial3: true,
        ),
        initialRoute: AppRoutes.login,
        routes: {
          AppRoutes.login: (context) => const LoginScreen(),
          AppRoutes.signup: (context) => const SignupScreen(),
          AppRoutes.home: (context) => const HomeScreen(),
          AppRoutes.productDetail: (context) => const ProductDetailScreen(),
          AppRoutes.profile: (context) => const ProfileScreen(),
        },
      ),
    );
  }
}
