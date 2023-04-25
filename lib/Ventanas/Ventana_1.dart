import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proyecto_empresa/Menus/Menu_1.dart';

import '../Menus/Menu_3.dart';

class Ventana_1 extends StatelessWidget {
  const Ventana_1({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: Menu_3(titulo: 'Hello Tanveer', subtitulo: 'Recipe creator', tananyo: 20, tananyo2: 18, comprobar: false,),
    );
  }
}