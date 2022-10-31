import 'package:flutter/material.dart';

class NewSalePage extends StatelessWidget {
  const NewSalePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ventas"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text("Nueva venta"),
              const SizedBox(
                height: 16,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Cliente',
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Direccion',
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Monto',
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const Expanded(
                    child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Numero de cuotas',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  DropdownButton(
                    items: const [
                      DropdownMenuItem(
                        child: Text('Diario'),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Valor Cuota',
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                child: const Text("Guardar"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
