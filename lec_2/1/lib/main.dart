import 'package:flutter/material.dart';

void main (){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter App",

          ),
          centerTitle: true,
          leading: Icon(Icons.menu),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Text(
            "Red & White Gruop of Intitutes\nOne Step in Changing Education Chain...",
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}