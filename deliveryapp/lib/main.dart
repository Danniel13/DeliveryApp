import 'package:flutter/material.dart';

import 'pages/Login.dart'; /* importar ubicaciones relativas-corresponden a las exactas del directorio */

void main() {
  runApp(const MaterialApp(
    title: "Delivery App",
    home: Loginview(), /* Pantalla en blanco por scaffold */
  ));
}
