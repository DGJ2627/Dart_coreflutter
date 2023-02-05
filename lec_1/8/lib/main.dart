import 'package:flutter/material.dart';

void main()
{
    runApp(
        MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
                body: Align(
                    alignment: const Alignment(0,3.60),
                    child: Container(
                        height: 500,
                        width: 500,
                        color: const Color(0xffFF9800),
                        alignment: const Alignment(0,-6),
                        child: Container(
                            height: 300,
                            width: 300,
                            decoration: const BoxDecoration(
                                color: Color(0xffFF9800),
                                shape: BoxShape.circle,
                            ),
                            alignment: Alignment.topCenter,
                            child: Container(
                                height: 280,
                                width: 230,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                ),
                                alignment: Alignment.topCenter,
                                child: Container(
                                    height: 230,
                                    width: 230,
                                    decoration: const BoxDecoration(
                                        color: Color(0xffFF9800),
                                        shape: BoxShape.circle,
                                    ),
                                    alignment: const Alignment(-0.6,0),
                                    child: Container(
                                        height: 70,
                                        width: 70,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                        ),
                                        alignment: const Alignment(19000,100),
                                        child: Container(
                                            height: 70,
                                            width: 69.99,
                                            decoration: const BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                            ),
                                            alignment: const Alignment(-45,25),
                                            child: const Text("Emoji",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 27,
                                                ),
                                            ),
                                        ),
                                    ),
                                ),
                            ),
                        ),
                    ),
                ),
            ),
        ),
    );
}
