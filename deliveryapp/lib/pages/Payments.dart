import 'package:flutter/material.dart';
import '../Widgets/drawer.dart';

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ventas"),
      ),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text("Cobros"),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: const CircleAvatar(),
                    title: const Text("Cesar Diaz"),
                    subtitle: const Text("Direccion"),
                    onTap: () {},
                  ),
                  const ListTile(
                    leading: CircleAvatar(),
                    title: Text("Alberto Quijano"),
                    subtitle: Text("Direccion"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_shopping_cart),
        onPressed: () {},
      ),
    );
  }
}
