// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ItemNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 6.0,
          width: 6.0,
          decoration: BoxDecoration(
            color: furnitureCateDisableColor,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Container(
          height: 5.0,
          width: 20.0,
          decoration: BoxDecoration(
              color: Colors.blue[700],
              borderRadius: BorderRadius.circular(10.0)),
        ),
        SizedBox(
          width: 5.0,
        ),
        Container(
          height: 6.0,
          width: 6.0,
          decoration: BoxDecoration(
            color: furnitureCateDisableColor,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Container(
          height: 6.0,
          width: 6.0,
          decoration: BoxDecoration(
            color: furnitureCateDisableColor,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
