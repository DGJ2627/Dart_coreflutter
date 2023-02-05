import 'package:flutter/material.dart';

void main (){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Letter Cover"),
          centerTitle: true,
          backgroundColor: Colors.green.shade300,
        ),
        body: Align(
          child: Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.green.shade500,
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: Colors.greenAccent,
                  width: 100,
                ),
                vertical: BorderSide(
                  color: Colors.green.shade600,
                  width: 100,
                )
              ),
            ),
          ),
        ),
      ),
    ),
  );
}