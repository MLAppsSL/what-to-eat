// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Menu_1 extends StatelessWidget with PreferredSizeWidget{
  final String titulo;
  final String subtitulo;
  final double tananyo;
  final double tananyo2;

  const Menu_1({super.key, required this.titulo, required this.subtitulo, required this.tananyo, required this.tananyo2});

  Widget build(BuildContext context) {
    return AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/logo.png'),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(this.titulo,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontSize: this.tananyo,
                      fontWeight: FontWeight.w700)),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  this.subtitulo,
                  style: TextStyle(
                      color: Colors.grey, fontSize: this.tananyo2, fontFamily: 'Poppins'),
                ))
          ],
        ),
        backgroundColor: Color.fromARGB(255, 255, 241, 231),
        toolbarHeight: 180,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        elevation: 0,
      );
  }
  Size get preferredSize => Size.fromHeight(180);
}
