import 'package:flutter/material.dart';

class LannisterScreen extends StatelessWidget {
  const LannisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Lannister"),
          elevation: 0,
        ),
        body: Column(
          children: [
            Image.asset('assets/images/lannister.png'),
            const Text('Hear me roar!'),
          ],
        ));
  }
}
