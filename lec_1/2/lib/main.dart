import 'package:flutter/material.dart';
void main (){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mission RNW"),
          centerTitle: true,
          backgroundColor: Colors.red.shade800,
        ),
        body: Align(
          child: Container(
            height: 150,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.red.shade100,
              border: Border(
                left: BorderSide(
                  color: Colors.red.shade300,
                  width: 20,
                ),
              ),
            ),
            alignment: Alignment.center,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Shaping "Skills" for "scalling" higher',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "\n-RNW",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}