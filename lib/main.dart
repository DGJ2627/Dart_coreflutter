import 'package:flutter/material.dart';
import 'package:viva_sec_app/screens/views/home_page.dart';
import 'package:viva_sec_app/screens/views/splash_page.dart';

void main() {
  runApp(
    const Gautam(),
  );
}

class Gautam extends StatelessWidget {
  const Gautam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // '/' : (context) =>  home_page(),
        // 'splash_page' : (context) => const splash_page(),
        '/' : (context) => Gautam(),
      },
    );
  }
}
