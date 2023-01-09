import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';


class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar:  CustomAppBar(title: 'User',),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}