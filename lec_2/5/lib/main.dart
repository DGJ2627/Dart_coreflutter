import 'package:flutter/material.dart';

void main () {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "An Indian Flag",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff2293F1),
                Color(0xff3F51B5),

              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Container(
            height: 170,
            width: 270,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
              gradient: LinearGradient(
                colors: [
                  Colors.orange.shade900,
                  Colors.white,
                  Colors.white,
                  Colors.green.shade800,

                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.2,0.4,0.6,0.8],
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
              "✴",
              style: TextStyle(
                color: Colors.blue.shade800,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}