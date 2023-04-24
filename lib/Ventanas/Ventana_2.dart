import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proyecto_empresa/Menus/Menu_1.dart';

class Ventana_2 extends StatelessWidget {
  const Ventana_2({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Menu_1(titulo: 'Hello Tanveer', subtitulo: 'Profile', tananyo: 20, tananyo2: 18,),
      body: Text('Hola'),
    );
  }
}