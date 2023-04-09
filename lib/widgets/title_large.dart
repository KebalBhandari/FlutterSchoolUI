// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../utils/constants.dart';

class TitleLarge extends StatelessWidget {
  final String title;
  final IconData? icon;

  const TitleLarge({required this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: icon != null
          ? MainAxisAlignment.spaceBetween
          : MainAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 40.0,
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (icon != null)
          Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Icon(icon),
              Positioned(
                right: -7.0,
                top: -7.0,
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: const BoxDecoration(
                    color: profile_info_background,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
