import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_empresa/Ventanas/Ventana_1.dart';
import 'package:proyecto_empresa/Ventanas/Ventana_2.dart';
import 'package:proyecto_empresa/Ventanas/Ventana_Login.dart';

class Navigation extends StatefulWidget {
  @override
  Menu_2 createState() => Menu_2();
}

class Menu_2 extends State<Navigation> {
  int seleccion = 1;
  void presionarItem(int item) {
    setState(() {
      seleccion = item;
    });
  }

  List<Widget> pantallas = [Ventana_1(), Ventana_Login(), Ventana_2()];

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: IndexedStack(
        index: seleccion,
        children: pantallas,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_rounded), label: "")
        ],
        currentIndex: seleccion,
        onTap: presionarItem,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Ventana_2()));
          },
          child: Icon(Icons.add, color: Colors.white),
          backgroundColor: Color.fromARGB(255, 255, 127, 36),
          elevation: 4.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
