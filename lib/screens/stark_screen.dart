import 'package:flutter/material.dart';

class StarkScreen extends StatelessWidget {
  const StarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Stark"),
          elevation: 0,
        ),
        body: Column(
          children: [
            Image.asset('assets/images/stark.png'),
            const SizedBox(
              height: 20,
            ),
            const Text('Winter is coming'),
          ],
        ));
  }
}
