// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../models/product_model.dart';
import '../../widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const CartScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Cart',
      ),
      bottomNavigationBar:  BottomAppBar(
        color: Colors.black87,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: () {},
                child: Text(
                  'Go to checkout',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //List of products inside cart
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Add 20.0 ₾ for free delivery',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black87),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/');
                        },
                        child: const Text('add more items')),
                  ],
                ),
                const Divider(
                  thickness: 2.2,
                ),
                CartProductCard(product: Product.products[1]),
                CartProductCard(product: Product.products[3]),
                CartProductCard(product: Product.products[0]),
              ],
            ),

            //Fee information
            Column(
              children: [
                const Divider(
                  thickness: 2.2,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Subtotal',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Text('41.5 ₾',
                              style: Theme.of(context).textTheme.headline2)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Delivery fee',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Text('5 ₾',
                              style: Theme.of(context).textTheme.headline2)
                        ],
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: 60,
                      color: Colors.black.withAlpha(50),
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Total',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            Text('46.5 ₾',
                                style: Theme.of(context).textTheme.headline2)
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
