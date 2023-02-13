import 'package:flutter/material.dart';
import 'package:u7_2_2/views/screens/Firstpage.dart';

void main (){
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
