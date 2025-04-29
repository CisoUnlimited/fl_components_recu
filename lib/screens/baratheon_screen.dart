import 'package:flutter/material.dart';

class BaratheonScreen extends StatelessWidget {
  const BaratheonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: const Text("Baratheon"),
          elevation: 0,
        ),
        body: Column(
          children: [
            Image.asset('assets/images/baratheon.png'),
            const SizedBox(
              height: 20,
            ),
            const Text('Ours is the fury'),
          ],
        ));
  }
}
