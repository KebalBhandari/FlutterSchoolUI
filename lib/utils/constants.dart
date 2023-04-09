// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

import 'custom_icon.dart';

const kPrimaryColor = Color.fromARGB(255, 37, 5, 78);
const kPrimaryLightColor = Color.fromARGB(255, 236, 227, 227);
const kPrimaryLightBgColor = Color.fromARGB(255, 153, 4, 4);

const double defaultPadding = 14.0;

class ApiConstants {
  static String baseUrl = 'https://jsonplaceholder.typicode.com';
  static String usersEndpoint = '/users';
}

//COLORS
const Color profile_info_background = kPrimaryColor;
const Color profile_info_categories_background = kPrimaryLightBgColor;
const Color profile_info_address = Color(0xFF8D7AEE);
const Color profile_info_privacy = Color(0xFFF369B7);
const Color profile_info_general = Color(0xFFFFC85B);
const Color profile_info_notification = Color(0xFF5DD1D3);
const Color profile_item_color = Color(0xFFC4C5C9);
const String imagePath = 'assets/image';

const String devMausam =
    'https://meritpokhara.org.np/storage/4KM32WaWVYVC_833068a7-6a6c-421a-84b7-277de8aca604.jpg';

const Color furnitureCateDisableColor = Color(0xFF939BA9);
const List lampsImage = [
  {
    'image':
        'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/mausam%2Fa.jpg?alt=media&token=6af6cfed-84a6-4cf3-a5ce-875fe47f8c5b'
  },
  {
    'image':
        'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/mausam%2Fb.jpg?alt=media&token=801b2f22-94fd-419b-8b84-c9b4fbd45d4d'
  },
  {
    'image':
        'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/mausam%2Fc.jpg?alt=media&token=b4470e0b-411f-4925-acaf-d6cb9292a44e'
  },
  {
    'image':
        'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/mausam%2Fd.jpg?alt=media&token=01ed6f8d-8e1d-403a-a5a0-423b7aa958be'
  },
  {
    'image':
        'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/mausam%2Fe.jpg?alt=media&token=a9342ee6-9dc6-452d-ade7-4a1d7783e7fe'
  },
  {
    'image':
        'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/mausam%2Ff.jpg?alt=media&token=c65c13ad-5b2f-494e-82eb-13d730d823ce'
  },
];
List<ProfileMenu> lampList = [
  ProfileMenu(title: 'Landscape', subTitle: '384'),
  ProfileMenu(title: 'Discus Pendant', subTitle: '274'),
  ProfileMenu(title: 'Mushroom Lamp', subTitle: '374'),
  ProfileMenu(title: 'Titanic Pendant', subTitle: '562'),
  ProfileMenu(title: 'Torn Lighting', subTitle: '105'),
  ProfileMenu(title: 'Abduction Pendant', subTitle: '365'),
];
const List profileItems = [
  {'count': '846', 'name': 'Collect'},
  {'count': '51', 'name': 'Attention'},
  {'count': '267', 'name': 'Track'},
  {'count': '39', 'name': 'Coupons'},
];

List<Catg> listProfileCategories = [
  Catg(name: 'Wallet', icon: CustomIcon.account_balance_wallet, number: 0),
  Catg(name: 'Delivery', icon: CustomIcon.truck, number: 0),
  Catg(name: 'Message', icon: CustomIcon.chat, number: 2),
  Catg(name: 'Service', icon: CustomIcon.money, number: 0),
];

List<FurnitureCatg> furnitureCategoriesList = [
  FurnitureCatg(icon: Icons.desktop_windows, elivation: true),
  FurnitureCatg(icon: CustomIcon.account_balance_wallet, elivation: false),
  FurnitureCatg(icon: Icons.security, elivation: false),
  FurnitureCatg(icon: CustomIcon.chat, elivation: false),
  FurnitureCatg(icon: CustomIcon.money, elivation: false),
];

List<ProfileMenu> profileMenuList = [
  ProfileMenu(
    title: 'Address',
    subTitle: 'Ensure your harvesting address',
    iconColor: profile_info_address,
    icon: Icons.location_on,
  ),
  ProfileMenu(
    title: 'Privacy',
    subTitle: 'System permission change',
    iconColor: profile_info_privacy,
    icon: Icons.lock,
  ),
  ProfileMenu(
    title: 'General',
    subTitle: 'Basic functional settings',
    iconColor: profile_info_general,
    icon: Icons.layers,
  ),
  ProfileMenu(
    title: 'Notification',
    subTitle: 'Take over the news in time',
    iconColor: profile_info_notification,
    icon: Icons.notifications,
  ),
];

class ProfileMenu {
  String? title;
  String? subTitle;
  IconData? icon;
  Color? iconColor;
  ProfileMenu({this.icon, this.title, this.iconColor, this.subTitle});
}

class Catg {
  String? name;
  IconData? icon;
  int? number;
  Catg({this.icon, this.name, this.number});
}

class FurnitureCatg {
  IconData? icon;
  bool? elivation;
  FurnitureCatg({this.icon, this.elivation});
}
