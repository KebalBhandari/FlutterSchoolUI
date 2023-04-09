// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import 'category.dart';

class ProfileCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          for (Catg catg in listProfileCategories)
            Category(
              catg: catg,
            )
        ],
      ),
    );
  }
}
