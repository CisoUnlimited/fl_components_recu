import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  print('value: $value');
                },
                validator: (value) {
                  if (value!.length < 3) {
                    return 'Mínimo 3 caracteres';
                  }
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
decoration: const InputDecoration(
  hintText: 'Nombre y apellidos',
  labelText: 'Nombre',
  helperText: 'Solo letras y espacios',
  suffixIcon: Icon(Icons.group_outlined),
  //prefixIcon: Icon(Icons.verified_user_outlined),
  icon: Icon(Icons.assignment_ind_outlined),
  /*border: OutlineInputBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
    )
  )*/
),
              )
            ],
          )),
    );
  }
}
