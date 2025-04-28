import 'package:flutter/material.dart';

class StarkScreen extends StatelessWidget {
  const StarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text("Stark"),
          elevation: 0,
        ),
        body: Column(
          children: [
            Image.asset('assets/images/stark.png'),
            const Text('Winter is coming'),
          ],
        ));
  }
}
