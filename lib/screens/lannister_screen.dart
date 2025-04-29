import 'package:flutter/material.dart';

class LannisterScreen extends StatelessWidget {
  const LannisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.yellow,
          backgroundColor: const Color.fromARGB(255, 173, 18, 6),
          title: const Text("Lannister"),
          elevation: 0,
        ),
        body: Column(
          children: [
            Image.asset('assets/images/lannister.png'),
            const SizedBox(
              height: 20,
            ),
            const Text('Hear me roar!'),
          ],
        ));
  }
}
