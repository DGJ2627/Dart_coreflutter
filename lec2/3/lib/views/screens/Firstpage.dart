import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  List g = [1, 2, 3,4,5,6,7,8,9,10];

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          "SPILITTER",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: const Color(0xffFF9800),
              child: SingleChildScrollView(
                child: Column(
                  children: g.map((e) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      height: 100,
                      width: w,
                      color: const Color(0xffFFC107),
                      alignment: Alignment.center,
                      child: Text("$e",
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ), Expanded(
            flex: 1,
            child: Container(
              color: const Color(0xffFF5722),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: g.map((e) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      height: h,
                      width: 100,
                      color: const Color(0xffADADAD),
                      alignment: Alignment.center,
                      child: Text("$e",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
