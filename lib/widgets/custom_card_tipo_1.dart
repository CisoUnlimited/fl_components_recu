import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        const ListTile(
          leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
          title: Text('Aquí va el título'),
          subtitle: Text(
              'Lorem fugiat amet cupidatat nulla pariatur. Adipisicing ex ea in reprehenderit. Qui magna dolore sunt id labore dolor pariatur ad veniam. Consequat Lorem exercitation sunt pariatur ipsum nulla exercitation enim.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancelar'),
              ),
              TextButton(onPressed: () {}, child: const Text('Ok')),
            ],
          ),
        )
      ],
    ));
  }
}
