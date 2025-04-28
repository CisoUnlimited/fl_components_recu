import 'package:flutter/material.dart';

class HouseInfo {
  final String route;
  final String name;
  final Image logo;
  final Widget screen;

  HouseInfo(
      {required this.route,
      required this.name,
      required this.logo,
      required this.screen});
}
