import 'package:flutter/material.dart';

import 'pages/Login.dart'; /* importar ubicaciones relativas-corresponden a las exactas del directorio */

void main() {
  runApp(const MaterialApp(
    title: "Online Store",
    home: Loginview(), /* Pantalla en blanco por scaffold */
  ));
}
