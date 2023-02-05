import 'package:flutter/material.dart';

void main () {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Dark Shadow Button ",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Align(
          child: Container(
            height: 70,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(
                color: Colors.redAccent,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff912E2E),
                  blurRadius: 12,
                  spreadRadius: 10,
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              "Tap",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        ),
        backgroundColor:Colors.black,
      ),
    ),
  );
}