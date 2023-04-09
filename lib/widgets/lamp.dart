// ignore_for_file: sized_box_for_whitespace, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'custom_side_button.dart';
import 'network_image.dart';

class Lamp extends StatelessWidget {
  final ProfileMenu? item;
  final int? index;
  Lamp({this.item, this.index});
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: index == 0 ? 300 : 250,
        //color: Colors.red,
        child: Container(
          margin: const EdgeInsets.only(left: 25.0),
          //color: Colors.yellow,
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                height: index == 0 ? 200.0 : 150.0,
                width: index == 0
                    ? deviceSize.width * 0.5
                    : deviceSize.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: PNetworkImage(
                    lampsImage[index!]['image'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: index == 0 ? 250.0 : 200.0,
                width: index == 0
                    ? deviceSize.width * 0.4
                    : deviceSize.width * 0.3,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFE7E9EF).withOpacity(0.0),
                      const Color(0xFFE7E9EF)
                    ],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    stops: const [0.5, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              Positioned(
                bottom: index == 0 ? 20.0 : 40.0,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                        // height: 110.0,
                        width: index == 0
                            ? deviceSize.width * 0.4
                            : deviceSize.width * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          // color: Colors.white,
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFE7E9EF),
                              Colors.white30,
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    item!.title!,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: index == 0 ? 16.0 : 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    'Matter made',
                                    style: TextStyle(
                                      color: furnitureCateDisableColor,
                                      fontSize: index == 0 ? 11.0 : 8,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    item!.subTitle!,
                                    style: TextStyle(
                                      color: profile_info_background,
                                      fontSize: index == 0 ? 25.0 : 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      'USD',
                                      style: TextStyle(
                                        color: profile_info_background,
                                        fontSize: index == 0 ? 15.0 : 10.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20.0,
                      right: -20.0,
                      child: CustomSideButton(
                        icon: Icons.arrow_forward,
                        fxn: () {
                          Navigator.pushNamed(
                            context,
                            '/selectedItem',
                            arguments: lampsImage[index!]['image'],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
