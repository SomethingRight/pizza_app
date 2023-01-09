import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String imageUrl;
  final String category;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  Product(
      {required this.name,
      required this.imageUrl,
      required this.category,
      required this.price,
      required this.isRecommended,
      required this.isPopular});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [name, category, imageUrl, price, isRecommended, isPopular];

  static List<Product> products = [
    Product(
        name: 'Margarita',
        imageUrl:
            'https://images.unsplash.com/photo-1604068549290-dea0e4a305ca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
        category: 'Pizza',
        price: 29,
        isRecommended: true,
        isPopular: false),
    Product(
        name: 'Proshutto',
        imageUrl:
            'https://images.unsplash.com/photo-1474600056930-615c3d706456?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80',
        category: 'Pizza',
        price: 34,
        isRecommended: true,
        isPopular: true),
    Product(
        name: 'Creame cheese',
        imageUrl:
            'https://images.unsplash.com/photo-1595854341625-f33ee10dbf94?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        category: 'Pizza',
        price: 33,
        isRecommended: false,
        isPopular: true),
    Product(
        name: 'Ipa',
        imageUrl:
            'https://images.unsplash.com/photo-1631482514710-665ad36356c2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        category: 'Beer',
        price: 7.50,
        isRecommended: true,
        isPopular: false),
    Product(
        name: 'Stout',
        imageUrl:
            'https://images.unsplash.com/photo-1623509547837-33e0e533a95f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
        category: 'Beer',
        price: 7.50,
        isRecommended: false,
        isPopular: true),
    Product(
        name: 'Lager',
        imageUrl:
            'https://images.unsplash.com/photo-1484506322535-0f7c24360384?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1178&q=80',
        category: 'Beer',
        price: 6.90,
        isRecommended: true,
        isPopular: true),
    Product(
        name: 'Strawberry lemonade',
        imageUrl:
            'https://plus.unsplash.com/premium_photo-1661540742302-2bd264e6d7aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
        category: 'Lemonade',
        price: 6,
        isRecommended: true,
        isPopular: false),
    Product(
        name: 'Cosmos lemonade',
        imageUrl:
            'https://images.unsplash.com/photo-1542518392-13317b1ee2a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        category: 'Lemonade',
        price: 7,
        isRecommended: true,
        isPopular: true),
    Product(
        name: 'On onion',
        imageUrl:
            'https://images.unsplash.com/photo-1588315029754-2dd089d39a1a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
        category: 'Pizza',
        price: 27,
        isRecommended: true,
        isPopular: false),
    Product(
        name: 'Mineragua',
        imageUrl:
            'https://images.unsplash.com/photo-1601419048176-a5b4ac9af7e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
        category: 'Water',
        price: 2.5,
        isRecommended: true,
        isPopular: true),
    Product(
        name: 'Generocity',
        imageUrl:
            'https://images.unsplash.com/photo-1583167634072-eab152a8d967?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        category: 'Water',
        price: 3,
        isRecommended: true,
        isPopular: false),
    Product(
        name: 'Heineken',
        imageUrl:
            'https://images.unsplash.com/photo-1619700951946-2e2416825027?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
        category: 'Beer',
        price: 6,
        isRecommended: true,
        isPopular: false),
    Product(
        name: 'Huerca',
        imageUrl:
            'https://images.unsplash.com/photo-1613169251614-4ed9d5d478c5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        category: 'Beer',
        price: 6.9,
        isRecommended: false,
        isPopular: true),
    Product(
        name: 'Singha',
        imageUrl:
            'https://images.unsplash.com/photo-1615474718586-062012d0df41?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
        category: 'Beer',
        price: 6.9,
        isRecommended: true,
        isPopular: false),
    Product(
        name: 'Mushrooms',
        imageUrl:
            'https://images.unsplash.com/photo-1545016803-a7e357a737e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        category: 'Pizza',
        price: 28,
        isRecommended: true,
        isPopular: false),
    Product(
        name: 'Seafood',
        imageUrl:
            'https://images.unsplash.com/photo-1652952561151-97e82f26c336?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80',
        category: 'Pizza',
        price: 37,
        isRecommended: true,
        isPopular: false),
    Product(
        name: 'Neopolitana',
        imageUrl:
            'https://images.unsplash.com/photo-1560433679-ac26da4b954d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        category: 'Pizza',
        price: 33,
        isRecommended: false,
        isPopular: true),
    Product(
        name: 'Kalcone',
        imageUrl:
            'https://images.unsplash.com/photo-1536964549204-cce9eab227bd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        category: 'Pizza',
        price: 17,
        isRecommended: true,
        isPopular: true),
    Product(
        name: 'Lime & apple',
        imageUrl:
            'https://images.unsplash.com/flagged/photo-1557753478-b9fb74f39eb5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80',
        category: 'Smoothie',
        price: 8,
        isRecommended: true,
        isPopular: false),
  ];
}
