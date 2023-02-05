import 'package:flutter/material.dart';

void main (){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              " Mashal"
          ),
          centerTitle: true,
          backgroundColor: Color(0xff795548),
        ),
        body: Align(
          child: Container(
            height: 200,
            width: 180,
            decoration: BoxDecoration(
              color: Color(0xff795548),
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: Color(0xff87665B),
                  width: 30
                ),
                vertical: BorderSide(
                  color: Colors.white,
                  width: 50
                ),
              ),
            ),
            alignment: Alignment(0,-3.7),
            child: Text("🔥",
            style: TextStyle(
              fontSize: 60,

             ),
            ),
          ),
        ),
      ),
   ),
  );
}