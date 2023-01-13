// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecom_pizza_app/blocs/cart/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/models.dart';
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
      bottomNavigationBar: BottomAppBar(
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
      // Body with Bloc logic
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state is CartLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is CartLoaded) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Upper part of screen including list of products
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            state.cart.freeDeliveryString,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          TextButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black87),
                              onPressed: () {
                                Navigator.of(context).pushNamed('/');
                              },
                              child: Text(
                                'add more items',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3
                                    ?.copyWith(color: Colors.white),
                              )),
                        ],
                      ),
                      const Divider(
                        thickness: 2.2,
                      ),
                      // List of products
                      SizedBox(
                        height: 400,
                        child: ListView.builder(
                          itemCount: state.cart.productQuantity(state.cart.products).keys.length,
                          itemBuilder: (context, index) {
                            return CartProductCard(
                                product: state.cart.productQuantity(state.cart.products).keys.elementAt(index),
                                quantity: state.cart.productQuantity(state.cart.products).values.elementAt(index),
                                );
                          },
                        ),
                      ),
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
                                Text('${state.cart.subtotalString} ₾',
                                    style:
                                        Theme.of(context).textTheme.headline2)
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
                                Text('${state.cart.deliveryFeeString} ₾',
                                    style:
                                        Theme.of(context).textTheme.headline2)
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
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Total',
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                  Text('${state.cart.totalString} ₾',
                                      style:
                                          Theme.of(context).textTheme.headline2)
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
            );
          } else {
            return const Text('Something went wrong!');
          }
        },
      ),
    );
  }
}
