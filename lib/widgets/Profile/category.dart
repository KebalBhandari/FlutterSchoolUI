// ignore_for_file: curly_braces_in_flow_control_structures, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class Category extends StatelessWidget {
  final Catg? catg;
  Category({this.catg});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                if (catg!.name == listProfileCategories[0].name)
                  Navigator.pushNamed(context, '/furniture');
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: profile_info_categories_background,
                ),
                child: Icon(
                  catg!.icon,
                  // size: 20.0,
                ),
              ),
            ),
            catg!.number! > 0
                ? Positioned(
                    right: -5.0,
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: const BoxDecoration(
                        color: profile_info_background,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        catg!.number.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          catg!.name!,
          style: const TextStyle(
            fontSize: 13.0,
          ),
        )
      ],
    );
  }
}
