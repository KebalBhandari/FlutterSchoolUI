// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'dart:math';

import 'package:flutter/material.dart';

import '../utils/constants.dart';

class FurnitureCategory extends StatelessWidget {
  final FurnitureCatg item;
  FurnitureCategory({required this.item});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            boxShadow: [
              if (item.elivation!)
                BoxShadow(
                  color: Color(0xFFD1DCFF),
                  blurRadius: 5.0, // has the effect of softening the shadow
                  spreadRadius: -1.0, // has the effect of extending the shadow
                  offset: Offset(10.0, 10.0),
                )
            ],
            color: profile_info_categories_background,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Icon(
            item.icon,
            size: 28.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
