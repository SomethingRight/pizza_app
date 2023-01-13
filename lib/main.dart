import 'package:ecom_pizza_app/blocs/cart/cart_bloc.dart';
import 'package:ecom_pizza_app/blocs/wishlist/wishlist_bloc.dart';
import 'package:ecom_pizza_app/config/app_router.dart';
import 'package:ecom_pizza_app/config/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //Bloc.observer = SimpleBlocObserver();
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
        BlocProvider(
          create: (_) => CartBloc()..add(CartStarted()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PizzaMaker',
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: '/splash',
      ),
    );
  }
}
