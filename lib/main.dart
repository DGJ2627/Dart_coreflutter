import 'package:flutter/material.dart';
import 'package:invoice_app/views/screens/customer_page.dart';
import 'package:invoice_app/views/screens/item_details_page.dart';
import 'package:invoice_app/views/screens/item_show_page.dart';
import 'package:invoice_app/views/screens/owner_page.dart';
import 'package:invoice_app/views/screens/splash_page.dart';

void main(){
  runApp(
    const Gautam(),
  );
}

class Gautam extends StatefulWidget {
  const Gautam({Key? key}) : super(key: key);

  @override
  State<Gautam> createState() => _GautamState();
}

class _GautamState extends State<Gautam> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash_page',
      routes: {
        '/' : (context) => const owner_page(),
        'splash_page' : (context) => const splash_page(),
        'customer_page' : (context) => const customer_page(),
        'item_show_page' : (context) => const item_show_page(),
        'item_details_page' : (context) => const item_details_page(),
      },
    );
  }
}
