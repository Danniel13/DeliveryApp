import 'package:flutter/material.dart';

import '../Widgets/drawer.dart';

class CashClosePage extends StatelessWidget {
  const CashClosePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cierre de caja"),
      ),
      drawer: const DrawerWidget(),
    );
  }
}
