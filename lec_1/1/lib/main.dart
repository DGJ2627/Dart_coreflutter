import 'package:flutter/material.dart';

void main (){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App",
          style: TextStyle(
            color: Colors.white,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.green.shade500,
        ),
      body: Align(
        child: (
        Container(
          height: 250,
          width: 250,
          color: Colors.green.shade800,
          alignment: Alignment.center,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.green.shade600,
            alignment: Alignment.center,
            child: Text(
              "oooo",
              style: TextStyle(
                color: Colors.black,
                fontSize: 100,
                letterSpacing: -30,
              ),
            ),
          ),
        )
        ),
      ),
        backgroundColor: Colors.green.shade500,
      ),

    ),
  );
}