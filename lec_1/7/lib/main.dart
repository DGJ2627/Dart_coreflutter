import 'package:flutter/material.dart';

void main () {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Opened Doors"
          ),
          centerTitle: true,
          backgroundColor: Colors.black87,
        ),
        body: Align(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: Colors.black,
                  width: 40,
                ),
                vertical: BorderSide(
                  color: Colors.white70,
                  width: 60,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}