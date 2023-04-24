// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:proyecto_empresa/Menus/Menu_1.dart';
import 'package:proyecto_empresa/Menus/Menu_2.dart';
import 'package:proyecto_empresa/Ventanas/Ventana_1.dart';
import 'package:proyecto_empresa/Ventanas/Ventana_Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '¡HOLA MUNDO!',
      theme: ThemeData(
        
        primarySwatch: MaterialColor(0xFFFF7F24, {
          50: Color(0xFFFFF3E0),
          100: Color(0xFFFFE0B2),
          200: Color(0xFFFFCC80),
          300: Color(0xFFFFB74D),
          400: Color(0xFFFFA726),
          500: Color(0xFFFF7F24),
          600: Color(0xFFFF6F00),
          700: Color(0xFFFF6F00),
          800: Color(0xFFFF6F00),
          900: Color(0xFFFF6F00),
        }),
      ),
      home: Navigation(),
    );
  }
}
