import 'package:flutter/material.dart';
import 'package:u7_1/views/Screen/Firstpage.dart';
void main () {
  runApp(
    const Gautam(),
  );
}

class Gautam extends StatelessWidget {
  const Gautam({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Firstpage(),
    );
  }
}