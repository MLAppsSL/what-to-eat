// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/logo.png'),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text('LOGIN ACCOUNT', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 25, fontWeight: FontWeight.w700)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                 child: Text('Welcome Back!', style: TextStyle(color: Colors.grey, fontSize: 18, fontFamily: 'Poppins'),)
              )  
            ],
          ),
          backgroundColor: Color.fromARGB(255, 255, 241, 231),
          toolbarHeight: 180,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
          backgroundColor: Color.fromARGB(255, 255, 127, 36),
          elevation: 4.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))    
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [ 
                Container(
                  padding: EdgeInsets.only(top:25, left: 30, right: 50),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 255, 127, 36),)
                      )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5, left: 30, right: 50),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 255, 127, 36),)
                      )
                    ),
                  ),
                ), 
                Container(
                  padding: EdgeInsets.only(top: 5, left: 30, right: 50),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 255, 127, 36),)
                      )
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child:Container(
                    padding: EdgeInsets.only(top: 10, right: 50),
                    child: Text('Forgot Password?', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 18, color: Color.fromARGB(255, 255, 127, 36))),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child:Container(
                    padding: EdgeInsets.only(top: 40),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text('LOGIN', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600, fontSize: 20)),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 127, 36),
                        fixedSize: Size(308, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),     
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 70,left: 25)),
                    Container(
                      height: 0.5,
                      width: 90,
                      color: Colors.black,
                    ),
                    Text('Or Continue With', style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.w400)),
                    Container(
                      height: 0.5,
                      width: 90,
                      color: Colors.black,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 95,)),
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
                      child: Image.asset('assets/google.jpeg',),
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
                BottomAppBar(
                  shape: const CircularNotchedRectangle(),
                  notchMargin: 6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.home), color: Colors.grey, iconSize: 35,),
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline_outlined), color: Colors.grey, iconSize: 35,)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

