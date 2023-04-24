// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Menu_3 extends StatelessWidget with PreferredSizeWidget {
  final String titulo;
  final String subtitulo;
  final double tananyo;
  final double tananyo2;

  const Menu_3(
      {super.key,
      required this.titulo,
      required this.subtitulo,
      required this.tananyo,
      required this.tananyo2});

  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset('assets/logo.png'),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(left: 10)),
                Text(this.titulo,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: this.tananyo,
                        fontWeight: FontWeight.w700)),
                Text(this.subtitulo,
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Poppins',
                        fontSize: this.tananyo2,
                        fontWeight: FontWeight.w300)),
              ],
            ),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 15),
          child: Row(
            children: [
              Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.settings,
                        color: Color.fromARGB(255, 255, 127, 36)),
                    onPressed: () {},
                  )),
            ],
          ),
        )
      ],
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Column(
              children: [
                Container(
                  width: 315,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                      Text('Seach Recipe', style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.w300 ),)
                    ],
                  ),
                )
              ],
            ),
          )),
      backgroundColor: Color.fromARGB(255, 255, 241, 231),
      toolbarHeight: 180,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      elevation: 0,
    );
  }

  Size get preferredSize => Size.fromHeight(180);
}
