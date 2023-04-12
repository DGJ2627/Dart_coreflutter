import 'package:dice_app/screens/views/Homepage.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(const Gautam());
}

class Gautam extends StatelessWidget {
  const Gautam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const Homepage(),
      },
    );
  }
}

