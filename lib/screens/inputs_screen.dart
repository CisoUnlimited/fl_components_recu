import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre': '',
      'apellido': '',
      'email': '',
      'password': '',
      'rol': 'champion',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                  hintText: 'Nombre',
                  labelText: 'Nombre',
                  helperText: 'Nombre del usuario',
                  icon: Icons.verified_user_outlined,
                  suffixIcon: Icons.check_circle_outline,
                  formProperty: 'nombre',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomTextFormField(
                  hintText: 'Apellidos',
                  labelText: 'Apellidos',
                  helperText: 'Apellidos del usuario',
                  icon: Icons.verified_user_outlined,
                  suffixIcon: Icons.check_circle_outline,
                  formProperty: 'apellido',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomTextFormField(
                  hintText: 'Email',
                  labelText: 'Email',
                  helperText: 'Email del usuario',
                  icon: Icons.verified_user_outlined,
                  suffixIcon: Icons.check_circle_outline,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomTextFormField(
                  hintText: 'Contraseña',
                  labelText: 'Contraseña',
                  helperText: 'Contraseña del usuario',
                  icon: Icons.verified_user_outlined,
                  suffixIcon: Icons.check_circle_outline,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(value: 'usuario', child: Text('Usuario')),
                    DropdownMenuItem(value: 'editor', child: Text('Editor')),
                    DropdownMenuItem(
                        value: 'programador', child: Text('Programador')),
                    DropdownMenuItem(
                        value: 'administrador', child: Text('Administrador')),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['rol'] = value ?? 'usuario';
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context)
                          .requestFocus(FocusNode()); // Cierra el teclado
                      if (!myFormKey.currentState!.validate()) {
                        // Si el formulario no es válido, no se envía
                        print('Formulario no válido');
                        return;
                      }
                      print(formValues);
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Enviar'))))
              ],
            ),
          )),
    );
  }
}
