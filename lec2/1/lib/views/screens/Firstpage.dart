import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey.shade900,
        title: const Text(
          "BOLT",
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 20,
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.yellowAccent.shade700,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: h,
              width: w,
              color: Colors.grey.shade900,
              alignment: Alignment.center,
              child: const Text(
                "⚡",
                style: TextStyle(
                  fontSize: 70,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Container(
                color: Colors.yellowAccent.shade700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
