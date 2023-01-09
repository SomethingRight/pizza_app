import 'package:flutter/material.dart';
import '../config/theme.dart';

class SectionTitle extends StatelessWidget {
  final Icon icon;
  final String title;
  const SectionTitle({required this.icon,required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
       alignment: Alignment.topLeft,
      child: Row(
        children: [
          icon,
          SizedBox(width: 3,),
          Text(title, style: theme().textTheme.headline2,),
        ],
      ));
  }
}

