// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Menu_4 extends StatelessWidget with PreferredSizeWidget{
  final String titulo;
  final String subtitulo;
  final double tananyo;
  final double tananyo2;

  const Menu_4({super.key, required this.titulo, required this.subtitulo, required this.tananyo, required this.tananyo2});

  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png'),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(this.titulo,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: this.tananyo,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text(
                    this.subtitulo,
                    style: TextStyle(
                        color: Colors.grey, fontSize: this.tananyo2, fontFamily: 'Poppins', fontWeight: FontWeight.w300),
                  ),
                ))
          ],
        ),
        leadingWidth: 60,
        leading: Row(
          children:[
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 255, 241, 231),
        toolbarHeight: 190,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        elevation: 0,
      );
  }
  Size get preferredSize => Size.fromHeight(180);
}
