import 'package:flutter/material.dart';
import 'package:kbc_game/views/screens/Firstpage.dart';
import 'package:kbc_game/views/screens/Homepage.dart';

void main () =>
  runApp(const Gautam(),);

class Gautam extends StatelessWidget {
  const Gautam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => const Homepage(),
        'firstpage':(context) => const Firstpage(),
      },
    );
  }
}
