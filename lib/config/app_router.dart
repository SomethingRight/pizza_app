import 'package:ecom_pizza_app/models/category_model.dart';
import 'package:ecom_pizza_app/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    print('this route is ${settings.name}');

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/cart':
        return MaterialPageRoute(builder: (_) => CartScreen());
      case '/wishlist':
        return MaterialPageRoute(builder: (_) => WishlistScreen());
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
        return MaterialPageRoute(builder: (_) => UserScreen());

      default:
        return _errorRoute();
    }
  }

  static _errorRoute() {
    return MaterialPageRoute(
        settings: RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text('ERROR'),
              ),
            ));
  }
}
