import 'package:flutter/material.dart';

void main (){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Gradient Button",
          ),
          centerTitle: true,
          backgroundColor: Color(0xff8E54E9),
        ),
        body: Align(
          child: Container(
            height: 80,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(35),
              gradient: LinearGradient(
                colors: [
                  Color(0xff4389a2),
                  Color(0xff5c258d),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(7,7),
                  color: Colors.black12,
                  blurRadius: 5,
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              "Flutter",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xff8E54E9),
      ),
    ),
  );
}