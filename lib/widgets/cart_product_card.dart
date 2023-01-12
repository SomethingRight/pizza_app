import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/cart/cart_bloc.dart';
import '../models/product_model.dart';

class CartProductCard extends StatelessWidget {
  final Product product;
  final int quantity;
  const CartProductCard({
    Key? key,
    required this.product, required this.quantity,
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
                Text(product.name,
                    style: Theme.of(context).textTheme.headline3),
                Text('${product.price} ₾',
                    style: Theme.of(context).textTheme.headline4),
              ],
            ),
          ),
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              return Row(
                children: [
                  IconButton(onPressed: () {
                    context.read<CartBloc>().add(CartProductRemoved(product));
                  }, icon: const Icon(Icons.remove)),
                  Text('$quantity', style: Theme.of(context).textTheme.headline3),
                  IconButton(onPressed: () {
                     context.read<CartBloc>().add(CartProductAdded(product));
                  }, icon: const Icon(Icons.add)),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
