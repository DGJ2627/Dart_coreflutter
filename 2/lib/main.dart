import 'package:flutter/material.dart';

void main () {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "My RNW",
            style: TextStyle(
              color:Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Red & White\n",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 50,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "Multimedia Education\n",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: 'Shaping "skills" for "scaling" higher...!!!',
                  style: TextStyle(
                    color: Colors.red.withOpacity(0.85),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}