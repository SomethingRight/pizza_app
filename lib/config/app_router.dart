import 'package:ecom_pizza_app/models/category_model.dart';
import 'package:ecom_pizza_app/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    print('this route is ${settings.name}');

    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/cart':
        return MaterialPageRoute(builder: (_) => const CartScreen());
      case '/wishlist':
        return MaterialPageRoute(builder: (_) => const WishlistScreen());
      case '/catalog':
        return MaterialPageRoute(
            builder: (_) => CatalogScreen(
                  category: settings.arguments as Category,
                ));
      case '/product':
        return MaterialPageRoute(
          builder: (_) => ProductScreen(
                   product: settings.arguments as Product,
        ));
      case '/user':
        return MaterialPageRoute(builder: (_) => const  UserScreen());

      default:
        return _errorRoute();
    }
  }

  static _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('ERROR'),
              ),
            ));
  }
}
