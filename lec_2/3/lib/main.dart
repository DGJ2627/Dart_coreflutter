import 'package:flutter/material.dart';

void main () {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "A Shadow Button",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Align(
          child: Container(
            height: 80,
            width: 220,
            decoration: BoxDecoration(
              color: Colors.white,
                border: Border.all(
                  color: Colors.tealAccent,
                  width: 1,
               ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.teal.shade300,
                  blurRadius: 9,
                  spreadRadius: 5,
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              "Tap",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                  fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}