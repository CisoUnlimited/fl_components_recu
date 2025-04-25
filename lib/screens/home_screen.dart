import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
          itemCount: 5,
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.access_time_filled_outlined),
            title: const Text('Nombre de ruta'),
            onTap: () {
              final route = MaterialPageRoute(builder: (context) => const Listview1Screen());
              Navigator.pushNamed(context, 'card1234');
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
        ));
  }
}
