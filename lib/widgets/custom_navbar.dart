import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black87,
      child:  SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){
              Navigator.of(context).pushNamed('/');
            }, icon: const Icon(Icons.home, color: Colors.white,)),
             IconButton(onPressed: (){
              Navigator.of(context).pushNamed('/cart');
            }, icon: const Icon(Icons.shopping_cart_rounded, color: Colors.white,)),
             IconButton(onPressed: (){
              Navigator.of(context).pushNamed('/user');
            }, icon: const Icon(Icons.person, color: Colors.white,)),
          ],
        ),
      ),
    );
  }
}
