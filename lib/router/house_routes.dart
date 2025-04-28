import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

class HouseRoutes {
  static final houseOptions = <HouseInfo>[
    HouseInfo(
        route: 'Targaryen',
        logo: Image.asset('assets/images/targaryen.png'),
        name: 'Targaryen',
        screen: const TargaryenScreen()),
    HouseInfo(
        route: 'Stark',
        logo: Image.asset('assets/images/stark.png'),
        name: 'Stark',
        screen: const StarkScreen()),
    HouseInfo(
        route: 'Lannister',
        logo: Image.asset('assets/images/lannister.png'),
        name: 'Lannister',
        screen: const LannisterScreen()),
    HouseInfo(
        route: 'Baratheon',
        logo: Image.asset('assets/images/baratheon.png'),
        name: 'Baratheon',
        screen: const BaratheonScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getHouseRoutes() {
    Map<String, Widget Function(BuildContext)> houseRoutes = {};
    for (final option in houseOptions) {
      houseRoutes
          .addAll({option.route: (BuildContext context) => option.screen});
    }
    return houseRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
