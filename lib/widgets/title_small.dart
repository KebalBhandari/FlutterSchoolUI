// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../utils/constants.dart';

class TitleSmall extends StatelessWidget {
  final String title, subTitle;
  const TitleSmall({required this.title, required this.subTitle});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          '. $subTitle',
          style: const TextStyle(
            color: furnitureCateDisableColor,
            fontSize: 12.0,
            letterSpacing: 0.2,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
