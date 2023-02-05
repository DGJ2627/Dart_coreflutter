import 'package:flutter/material.dart';

void main () {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Watch",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
            backgroundColor:  Color(0xff48416A),
        ),
        body: Container(
          alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff47436C),
                  Color(0xff2196F2),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            ),
          child: Container(
            height: 80,
            width: 230,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xff577DAF),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(35),
              gradient: LinearGradient(
                colors: [
                  Color(0xff507BB0),
                  Color(0xff416DA1),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(7,7),
                  color: Colors.black12,
                  blurRadius: 5,
                    spreadRadius:5,
                ),
              ],
            ),
            alignment: Alignment.center,
              child: Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ),
        ),
      ),
    ),
  );
}