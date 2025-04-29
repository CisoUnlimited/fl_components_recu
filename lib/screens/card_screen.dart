import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          Card(
              child: Column(
            children: [
              ListTile(
                leading:
                    Icon(Icons.photo_album_outlined, color: AppTheme.primary),
                title: Text('Aquí va el título'),
                subtitle: Text(
                    'Lorem fugiat amet cupidatat nulla pariatur. Adipisicing ex ea in reprehenderit. Qui magna dolore sunt id labore dolor pariatur ad veniam. Consequat Lorem exercitation sunt pariatur ipsum nulla exercitation enim.'),
              )
            ],
          ))
        ],
      ),
    );
  }
}
