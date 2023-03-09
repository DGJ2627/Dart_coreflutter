import 'package:flutter/material.dart';
import 'package:viva_exam1/answer/expensesanser.dart';
import 'package:viva_exam1/answer/incomeanswer.dart';
import 'package:viva_exam1/answer/totalanswer.dart';
import 'package:viva_exam1/views/screens/Homepage.dart';
import 'package:viva_exam1/views/screens/firstpage.dart';
import 'package:viva_exam1/views/screens/secondpage.dart';

void main () =>
    runApp(
      Gautam(),
    );

class Gautam extends StatelessWidget {
  const Gautam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {

      '/':(context) => firstpage(),
       'page2' : (context) => Homepage(),
       'page3' : (context) => secondpage(),
       'page4' : (context) => expensesanswer(),
       'page5' : (context) => incomeanswer(),
       // 'page6' : (context) => totalanswer(),
     },
    );
  }
}
