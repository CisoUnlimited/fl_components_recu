import 'package:fl_components/router/app_routes.dart';
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
          itemCount: AppRoutes.menuOptions.length,
          itemBuilder: (context, index) => ListTile(
            leading: Icon(AppRoutes.menuOptions[index].icon),
            title: Text(AppRoutes.menuOptions[index].name),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
        ));
  }
}
