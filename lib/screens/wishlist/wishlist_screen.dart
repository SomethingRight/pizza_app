import 'package:ecom_pizza_app/models/models.dart';
import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Wishlist',
      ),
      bottomNavigationBar: CustomNavBar(),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, childAspectRatio: 2.5),
        itemCount: Product.products.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.all(5.0),
          child: ProductCard(
              leftPositioned: 130.0,
              widthFactor: 1.1,
              isWishlist: true,
              product: Product.products[index]),
        ),
      ),
    );
  }
}
