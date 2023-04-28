import 'dart:async';

import 'package:flutter/material.dart';

class splash_page extends StatefulWidget {
  const splash_page({Key? key}) : super(key: key);

  @override
  State<splash_page> createState() => _splash_pageState();
}

class _splash_pageState extends State<splash_page> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer( const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Stop Watch"),
      CircularProgressIndicator(),
        ],
      )
    );
  }
}
