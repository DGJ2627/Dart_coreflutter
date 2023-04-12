import 'package:flutter/material.dart';
import 'package:lec2_1/views/screens/Homepage.dart';
import 'package:lec2_1/views/screens/firstpage.dart';

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
      routes: {
        '/' : (context)=>const Homepage(),
        'page2' : (context)=>const firstpage(),
      },
    );
  }
}
