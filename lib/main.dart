import 'package:ecom_pizza_app/blocs/wishlist/wishlist_bloc.dart';
import 'package:ecom_pizza_app/config/app_router.dart';
import 'package:ecom_pizza_app/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/widgets.dart';
import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => WishlistBloc()..add(StartWishlist()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PizzaMaker',
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: '/',
      ),
    );
  }
}
