// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ecom_pizza_app/models/models.dart';

import '../config/theme.dart';

class ProductCard extends StatelessWidget {
  final double widthFactor;
  final double leftPositioned;
  final Product product;
  final bool? isWishlist;
  const ProductCard({
    Key? key,
    required this.leftPositioned,
    required this.widthFactor,
    required this.product, this.isWishlist = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed('/product', arguments: product);
          },
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Stack(
              clipBehavior: Clip.hardEdge,
              children: <Widget>[
                Image.network(
                  product.imageUrl,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width / widthFactor,
                  height: 140,
                ),
                Positioned(
                  bottom: 0.0,
                  left:  leftPositioned,
                  right: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(180, 0, 0, 0),
                          Color.fromARGB(30, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment(1.0, 1.0),
                      ),
                    ),
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.white),
                              ),
                              Text(
                                '${product.price} ₾',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          iconSize: 32,
                          icon: const Icon(
                            Icons.add_outlined,
                            color: Colors.white,
                          ),
                        ), isWishlist == true ? IconButton(
                          onPressed: () {},
                          iconSize: 32,
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        ) : const SizedBox(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
