import 'package:flutter/material.dart';
import 'package:viva_sec_app/screens/views/home_page.dart';
import 'package:viva_sec_app/screens/views/splash_page.dart';
import 'package:viva_sec_app/screens/views/stop_watch.dart';

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
        'splash_page' : (context) => const splash_page(),
        '/' : (context) => stop_page(),
      },
    );
  }
}
