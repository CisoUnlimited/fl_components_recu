import 'package:fl_components/router/house_routes.dart';
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Targaryen', 'Stark', 'Lannister', 'Baratheon'];

  const Listview2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 2'),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: Text(options[index]),
            onTap: () {
              Navigator.pushNamed(
                  context, HouseRoutes.houseOptions[index].route);
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
        ));
  }
}
