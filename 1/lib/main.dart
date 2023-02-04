import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter App",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.yellow,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        body: Center(
          child: Text(
            "Red & White",
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 5,
              color: Colors.red,
              decoration: TextDecoration.underline,
              decorationColor: Colors.yellow,
              decorationStyle: TextDecorationStyle.double,
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}
