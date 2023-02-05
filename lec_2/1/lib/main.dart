import 'package:flutter/material.dart';

void main () {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "lanuch Button"
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Align (
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              boxShadow:
                  [BoxShadow(
                    color: Color(0xff0f860B),
                    blurRadius: 15,
                    spreadRadius: 13,
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              "Go",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}