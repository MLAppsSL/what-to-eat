// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proyecto_empresa/Ventanas/Ventana_Ajustes.dart';

class Menu_3 extends StatelessWidget with PreferredSizeWidget {
  final String titulo;
  final String subtitulo;
  final double tananyo;
  final double tananyo2;
  final bool comprobar;

  const Menu_3(
      {super.key,
      required this.titulo,
      required this.subtitulo,
      required this.tananyo,
      required this.tananyo2,
      required this.comprobar});

  Widget build(BuildContext context) {
    double size = this.comprobar ? 215 : 315;
    List<Widget> inputROw = comprobar
        ? [
            Row(children: [
              Container(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '  Ingrediants',
                  ),
                ),
              ),
            ]),
          ]
        : [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            Container(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  hintText: ' Search Recipe',
                ),
              ),
            ),
          ];
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          if (comprobar) Image.asset('assets/logo.png'),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Column(
              children: [
                if (comprobar)
                  Text(this.titulo,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: this.tananyo,
                          fontWeight: FontWeight.w700)),
                if (comprobar)
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Ventana_Ajustes(),
                          ));
                    },
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
                Row(children: [
                  Padding(padding: EdgeInsets.only(left: 25)),
                  Container(
                    width: size,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: inputROw,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15)),
                  if (comprobar)
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 127, 36),
                          borderRadius: BorderRadius.circular(20)),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    )
                ])
              ],
            ),
          )),
      leadingWidth: comprobar ? 75 : 300,
      leading: Row(
        children: [
          if (comprobar)
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
          if (comprobar == false)
            Container(
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 25)),
                  Image.asset('assets/logo.png'),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 25)),
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
            )
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
