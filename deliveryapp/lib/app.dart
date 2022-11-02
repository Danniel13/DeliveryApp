import 'package:flutter/material.dart';
import 'pages/Login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ventas a domicilio",
      home: LoginView(),
    );
  }
}
