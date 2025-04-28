import 'package:flutter/material.dart';

class TargaryenScreen extends StatelessWidget {
  const TargaryenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Targaryen"),
          elevation: 0,
        ),
        body: Column(
          children: [
            Image.asset('assets/images/targaryen.png'),
            const Text('Fire and blood'),
          ],
        ));
  }
}
