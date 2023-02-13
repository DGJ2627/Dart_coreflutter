import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black12,
        title: const Text(
          "THE WALL",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 11,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 107,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(
                width: 11,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 107,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(
                  width: 10.5
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 107,
                  color: Colors.brown,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 11,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 107,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(
                  width:
                  11
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 107,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(
                  width: 11
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 107,
                  color: Colors.brown,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 11,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 107,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(
                width: 11,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 107,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(
                  width: 11
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 107,
                  color: Colors.brown,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 11,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 107,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(
                  width: 11
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 107,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(
                  width: 11
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 107,
                  color: Colors.brown,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 11
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 107,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(
                width: 11,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 107,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(
                  width: 11
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 107,
                  color: Colors.brown,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 11,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 107,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(
                  width: 11
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 107,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(
                  width: 11
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 107,
                  color: Colors.brown,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
