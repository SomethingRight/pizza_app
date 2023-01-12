import 'dart:async';

import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacementNamed(context, '/'),
    );
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/images/pizza.png',
            width: 150,
            height: 150,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'PizzaMaker',
            style: Theme.of(context)
                .textTheme
                .headline1
                ?.copyWith(color: Colors.black87),
          )
        ]),
      ),
    );
  }
}
