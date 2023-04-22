import 'dart:async';

import 'package:flutter/material.dart';

class splash_page extends StatefulWidget {
  const splash_page({Key? key}) : super(key: key);

  @override
  State<splash_page> createState() => _splash_pageState();
}

class _splash_pageState extends State<splash_page> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Contact",
          style: TextStyle(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Container(
                  alignment: Alignment.center,
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                      "https://media0.giphy.com/media/QBd2kLB5qDmysEXre9/giphy.gif?cid=ecf05e47dampmjbjlcj9puiclsqpiwku3r3d5eonouoy5ac7&rid=giphy.gif&ct=g")),
            ),
          ),
          const Center(
              child: Text(
            "Just Wait Application is on Load",
            style: TextStyle(
                color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
          )),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
