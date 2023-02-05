import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp (
     debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "#3D Cube"
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Align(
        child: Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.teal.shade200,
            border: Border.symmetric(
              horizontal: BorderSide(
                color: Colors.teal.shade600,
                width: 40,
              ),
              vertical: BorderSide(
                color: Colors.teal.shade800,
                width: 40,
              ),
            ),
          ),
        ),
      ),
    ),
   ),
  );
}