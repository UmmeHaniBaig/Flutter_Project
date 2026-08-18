import 'package:flutter/material.dart';
import 'data/dummy_data.dart';
import 'model/product.dart';
import 'routes/app_routes.dart';
import 'utils/app_bottom_nav.dart';
import 'utils/app_colors.dart';
import 'utils/app_strings.dart';
import 'utils/product_thumb.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const Text(
              AppStrings.menu,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 127, 8, 8),
              ),
            ),
            const SizedBox(height: 18),
            _SearchBar(controller: _searchController),
            const SizedBox(height: 24),
            _CategoryRow(),
            const SizedBox(height: 24),
            Text(
              AppStrings.promotions,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 127, 8, 8),
                  fontSize: 23),
            ),
            const SizedBox(height: 10),
            _PromoBanner(),
            const SizedBox(height: 24),
            Text(
              AppStrings.popular,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 127, 8, 8),
                  fontSize: 23),
            ),
            const SizedBox(height: 12),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: DummyData.products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
                childAspectRatio: 0.78,
              ),
              itemBuilder: (context, index) {
                final product = DummyData.products[index];
                return _ProductCard(product: product);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const AppBottomNav(currentIndex: 0),
    );
  }
}

class _SearchBar extends StatelessWidget {
  final TextEditingController controller;
  const _SearchBar({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          hintText: AppStrings.search,
          prefixIcon:
              Icon(Icons.search, color: Color.fromARGB(255, 191, 180, 180)),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }
}

class _CategoryRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: DummyData.categories.map((category) {
        return Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor:
                  const Color.fromARGB(255, 128, 16, 14).withOpacity(0.1),
              child: Icon(
                DummyData.categoryIcons[category],
                color: const Color.fromARGB(255, 128, 21, 19),
                size: 28,
              ),
            ),
            const SizedBox(height: 6),
            Text(category, style: const TextStyle(fontSize: 12)),
          ],
        );
      }).toList(),
    );
  }
}

class _PromoBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 129, 28, 21),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppStrings.todaysOffer,
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 12)),
                SizedBox(height: 4),
                Text(
                  AppStrings.offerText,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 243, 241, 241),
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.fastfood,
              color: Color.fromARGB(255, 128, 16, 14), size: 36),
        ],
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final Product product;
  const _ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .pushNamed(AppRoutes.productDetail, arguments: product),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFFF7F7F7),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProductThumb(product: product, size: 48),
            const SizedBox(height: 8),
            Text(
              product.name,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 2),
            Text(
              "\$${product.price.toStringAsFixed(0)}",
              style: const TextStyle(
                  fontSize: 12, color: Color.fromARGB(255, 128, 18, 18)),
            ),
          ],
        ),
      ),
    );
  }
}
