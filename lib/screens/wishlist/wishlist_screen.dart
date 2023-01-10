import 'package:ecom_pizza_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/wishlist/wishlist_bloc.dart';
import '../../widgets/widgets.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Wishlist',
      ),
      bottomNavigationBar: CustomNavBar(),
      body: BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {
          if (state is WishlistLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is WishlistLoaded) {
            return GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 2.5),
              itemCount: state.wishlist.products.length,
              itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: ProductCard(
                    leftPositioned: 130.0,
                    widthFactor: 1.1,
                    isWishlist: true,
                    product: state.wishlist.products[index]),
              ),
            );
          } else {
            return Text('something went wrong');
          } 
        },
      ),
    );
  }
}
