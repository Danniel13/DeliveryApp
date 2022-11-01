import 'package:flutter/material.dart';
import 'package:deliveryapp/pages/Payments.dart';

class LoginPage extends StatelessWidget {
  final _imageUrl = "img/images/logoto.png";
  final String model;

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _logo(),
              _formulario(context),
              _inicioAlternativo(),
              TextButton(
                child: const Text("No tiene usuario, Registrate aqui"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _logo() {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Image.asset(_imageUrl),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }

  Widget _formulario(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Column(
        children: [
          _campoCorreoElectronico(),
          const SizedBox(height: 8),
          _campoClave(),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text(
              "Iniciar sesion",
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                // TODO: Validar usuario y contraseña en BD

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentsPage(),
                  ),
                );
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  Widget _campoCorreoElectronico() {
    return TextFormField(
      maxLength: 50,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Correo Electrónico',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "El correo electronico es obligatorio";
        }
        if (!value.contains("@") || !value.contains(".")) {
          return "El correo tiene un formato inválido";
        }
        return null;
      },
    );
  }

  Widget _campoClave() {
    return TextFormField(
      maxLength: 30,
      obscureText: true,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Contraseña',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "La contraseña es obligatoria";
        }
        if (value.length < 6) {
          return "Minimo debe contener 6 caracteres";
        }
        return null;
      },
    );
  }

  Widget _inicioAlternativo() {
    return Column(
      children: [
        const Text("O iniciar sesion con"),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text("Facebook"),
              onPressed: () {},
            ),
            ElevatedButton(
              child: const Text("Google"),
              onPressed: () {},
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
