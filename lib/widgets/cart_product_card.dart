

import 'package:flutter/material.dart';

import '../models/product_model.dart';

class CartProductCard extends StatelessWidget {
  final Product product;
  const CartProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Image.network(product.imageUrl,
              width: 100, height: 80, fit: BoxFit.cover),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name, style: Theme.of(context).textTheme.headline3),
                Text('${product.price} ₾',
                    style: Theme.of(context).textTheme.headline4),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
              Text('1', style: Theme.of(context).textTheme.headline3),
              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            ],
          )
        ],
      ),
    );
  }
}
