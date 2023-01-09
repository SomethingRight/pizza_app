// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ecom_pizza_app/models/category_model.dart';

import '../../models/models.dart';
import '../../widgets/widgets.dart';

class CatalogScreen extends StatelessWidget {
  final Category category;
  const CatalogScreen({
    Key? key,
    required this.category,
  }) : super(key: key);

  static Route route({required Category category}) {
    return MaterialPageRoute(
      builder: (context) => CatalogScreen(category: category),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
      appBar: CustomAppBar(
        title: category.name,
      ),
      bottomNavigationBar: CustomNavBar(),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.3),
        itemCount: categoryProducts.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.all(2.0),
          child: ProductCard(leftPositioned: 0.0, widthFactor: 2, product: categoryProducts[index]),
        ),
      ),
    );
  }
}
