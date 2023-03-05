
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:otp_1/Views/Screens/Firstpage.dart';

void main()
{
  runApp(
    Gautam(),
  );
}

class Gautam extends StatelessWidget {
  const Gautam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Firstpage(),
    );
  }
}

