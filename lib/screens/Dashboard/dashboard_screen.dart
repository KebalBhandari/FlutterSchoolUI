// ignore_for_file: unused_local_variable, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors, library_private_types_in_public_api, import_of_legacy_library_into_null_safe

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';

import '../../widgets/Profile/profile_details.dart';
import '../../widgets/furniture_category.dart';
import '../../widgets/item_navigation.dart';
import '../../widgets/lamp.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          //mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProfileDetail(),
            SizedBox(
              height: 10.0,
            ),
            buildFurnitureCategories,
            SizedBox(
              height: 10.0,
            ),
            buildLampsWithSlider(),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.notifications),
            title: Text('News'),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text(
              'Profile',
            ),
            activeColor: Colors.pink,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('More'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

Container buildLampsWithSlider() {
  return Container(
    //color: Colors.yellow,
    height: 300,
    child: Stack(
      children: <Widget>[
        buildLamps,
        Positioned(
          bottom: 40.0,
          right: 50.0,
          child: ItemNavigation(),
        )
      ],
    ),
  );
}

final buildLamps = ListView.builder(
  scrollDirection: Axis.horizontal,
  physics: BouncingScrollPhysics(),
  shrinkWrap: true,
  itemCount: lampList.length,
  itemBuilder: (context, int index) => Lamp(
    item: lampList[index],
    index: index,
  ),
);
final buildFurnitureCategories = Container(
  height: 100.0,
  //color: Colors.red,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: furnitureCategoriesList.length,
    itemBuilder: (context, int index) => FurnitureCategory(
      item: furnitureCategoriesList[index],
    ),
  ),
);
