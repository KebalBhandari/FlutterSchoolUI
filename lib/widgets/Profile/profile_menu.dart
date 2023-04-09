// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import 'menu_items.dart';

class ProfileMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        for (var menu in profileMenuList)
          ProfileMenuItem(
            menu: menu,
          ),
      ],
    );
  }
}
