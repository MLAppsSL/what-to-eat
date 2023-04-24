import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proyecto_empresa/Menus/Menu_1.dart';
import 'package:proyecto_empresa/Menus/Menu_2.dart';

class Ventana_Login extends StatelessWidget {
  const Ventana_Login({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: Menu_1(titulo: 'LOGIN ACOUNT',subtitulo: 'Welcome Back!', tananyo: 30, tananyo2: 18,),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 5, left: 30, right: 50),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Name',
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 127, 36),
                      ))),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5, left: 30, right: 50),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email Address',
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 127, 36),
                      ))),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5, left: 30, right: 50),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 127, 36),
                      ))),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.only(top: 10, right: 50),
                  child: Text('Forgot Password?',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color.fromARGB(255, 255, 127, 36))),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.only(top: 40),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('LOGIN',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 255, 127, 36),
                      fixedSize: Size(308, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 50, left: 25)),
                  Container(
                    height: 0.5,
                    width: 90,
                    color: Colors.black,
                  ),
                  Text('Or Continue With',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  Container(
                    height: 0.5,
                    width: 90,
                    color: Colors.black,
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    left: 95,
                  )),
                  Container(
                    width: 55,
                    height: 55,
                    child: Image.asset('assets/facebook.png'),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  Container(
                    width: 55,
                    height: 35,
                    child: Image.asset(
                      'assets/google.jpeg',
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  Container(
                    width: 55,
                    height: 55,
                    child: Image.asset('assets/twitter.png'),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    left: 30,
                  )),
                  Text(
                    'Don`t Here Acount?',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(' Create New Account',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 255, 127, 36)))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
