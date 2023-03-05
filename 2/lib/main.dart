import 'package:color_pallet/views/screens/Firstpage.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(
    const Gautam(),
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
