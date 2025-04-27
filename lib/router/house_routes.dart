import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static final houseOptions = <HouseInfo>[
    HouseInfo(
      name: 'Targaryen',
      logo: Image.asset('assets/images/targaryen.png'),
      description: 'Fire and blood',
      color: 'black',
    ),
    HouseInfo(
      name: 'Stark',
      logo: Image.asset('assets/images/stark.png'),
      description: 'Winter is coming',
      color: 'white',
    ),
    HouseInfo(
      name: 'Lannister',
      logo: Image.asset('assets/images/lannister.png'),
      description: 'Hear me roar!',
      color: 'red',
    ),
    HouseInfo(
      name: 'Baratheon',
      logo: Image.asset('assets/images/baratheon.png'),
      description: 'Ours is the fury',
      color: 'yellow',
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getHouseRoutes() {
    Map<String, Widget Function(BuildContext)> houseRoutes = {};
    for (final option in houseOptions) {
      houseRoutes
          .addAll({option.name: (BuildContext context) => HouseScreen(houseInfo: option)});
    }
    return houseRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
