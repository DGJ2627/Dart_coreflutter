import 'package:demo_1/views/screens/Firstpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Gautam(),
  );
}

class Gautam extends StatelessWidget {
  const Gautam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Firstpage()
    );
  }
}

