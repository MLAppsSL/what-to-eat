// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_empresa/Menus/Menu_4.dart';

class Ventana_Ajustes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Menu_4(
            titulo: 'Cookeroo',
            subtitulo: 'RecipeCreator',
            tananyo: 28,
            tananyo2: 18),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              Row(children: [
                Text('YOUR BOOKMARK',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.w600)),
              ]),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 60)),
                  Image.asset('assets/rey.png'),
                  Padding(padding: EdgeInsets.only(left: 11)),
                  Text(' Become Premium',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w300)),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 21)),
                  Image.asset('assets/notas.png'),
                  Padding(padding: EdgeInsets.only(left: 17.79)),
                  Text('Send feedback',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w300)),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 32)),
                  Container(
                    width: 300,
                    height: 1,
                    color: Colors.black,
                  )
                ],
              ),
              Row(children: [
                Padding(padding: EdgeInsets.only(top: 30)),
                Text('PREFERENCES',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.w600)),
              ]),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 60)),
                  Image.asset('assets/papel.png'),
                  Padding(padding: EdgeInsets.only(left: 17.79)),
                  Text('Consent',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w300)),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 32)),
                  Container(
                    width: 300,
                    height: 1,
                    color: Colors.black,
                  )
                ],
              ),
              Row(children: [
                Padding(padding: EdgeInsets.only(top: 30)),
                Text('YOUR BOOKMARK',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.w600)),
              ]),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 60)),
                  Image.asset('assets/estrella.png'),
                  Padding(padding: EdgeInsets.only(left: 17.79)),
                  Text('Rate the App',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w300)),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 25)),
                  Image.asset('assets/mano.png'),
                  Padding(padding: EdgeInsets.only(left: 17.79)),
                  Text('Recommend to a Friend',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w300)),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 32)),
                  Container(
                    width: 300,
                    height: 1,
                    color: Colors.black,
                  )
                ],
              ),
              Row(children: [
                Padding(padding: EdgeInsets.only(top: 60)),
                Image.asset('assets/puerta.png'),
                Padding(padding: EdgeInsets.only(left: 17.79)),
                Text('Log Out',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w500)),
              ]),
            ]),
          ),
        ));
  }
}
