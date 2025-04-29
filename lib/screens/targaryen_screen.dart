import 'package:flutter/material.dart';

class TargaryenScreen extends StatelessWidget {
  const TargaryenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: const Color.fromARGB(255, 175, 47, 38),
          backgroundColor: Colors.black,
          title: const Text("Targaryen"),
          elevation: 0,
        ),
        body: Column(
          children: [
            Image.asset('assets/images/targaryen.png'),
            const SizedBox(
              height: 20,
            ),
            const Text('Fire and blood'),
          ],
        ));
  }
}
