// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/wishlist/wishlist_bloc.dart';
import '../../models/models.dart';
import '../../widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  final Product product;
  const ProductScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  static Route route({required Product product}) {
    return MaterialPageRoute(
      builder: (context) => ProductScreen(
        product: product,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: product.name),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black87,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              ),
              BlocBuilder<WishlistBloc, WishlistState>(
                builder: (context, state) {
                  return IconButton(
                    onPressed: () {
                      context
                          .read<WishlistBloc>()
                          .add(AddWishlistProduct(product));

                      const  snackBar = SnackBar(
                        content: Text('Added to wishlist!'),
                        duration: Duration(milliseconds: 600),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  );
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: () {},
                child: Text(
                  'Add to cart',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.75,
              viewportFraction: 0.85,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: [HeroCarouselCard(product: product)],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: Colors.black.withAlpha(50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        '${product.price} ₾',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          ExpansionTile(
            iconColor: Colors.black38,
            collapsedIconColor: Colors.black87,
            childrenPadding: EdgeInsets.symmetric(horizontal: 8),
            tilePadding: EdgeInsets.symmetric(horizontal: 25),
            initiallyExpanded: true,
            title: Text(
              'Product information',
              style: Theme.of(context).textTheme.headline2,
            ),
            children: [
              ListTile(
                title: Text(
                  'You need pizza crust, pizza sauce, cheese, and pepperoni. Pepperoni is basically an American version of salami.  Pepperoni is a meat mixture of beef and pork that has been cured and seasoned with paprika and chili powder.  It’s a loved American food staple and most commonly used to make pepperoni pizza.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ],
          ),
          ExpansionTile(
            iconColor: Colors.black38,
            collapsedIconColor: Colors.black87,
            childrenPadding: EdgeInsets.symmetric(horizontal: 8),
            tilePadding: EdgeInsets.symmetric(horizontal: 25),
            initiallyExpanded: true,
            title: Text(
              'Delivery information',
              style: Theme.of(context).textTheme.headline2,
            ),
            children: [
              ListTile(
                title: Text(
                  'Free delivery when ordering from two pizzas,\n otherwise 5 ₾',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
