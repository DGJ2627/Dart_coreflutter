import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _Firstpage();
}

class _Firstpage extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          "Map",
        ),
        centerTitle: true,
        leading: const Icon(Icons.menu),
      ),
      body: Align(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Container(
                height: h * 0.11,
                width: w,
                decoration: BoxDecoration(color: Colors.white),
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Exit",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                      child: Icon(Icons.exit_to_app),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                    height: h * 0.11,
                    width: w,
                    decoration: BoxDecoration(color: Colors.white),
                    padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Play",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                          child: Icon(Icons.play_arrow),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                    height: h * 0.11,
                    width: w,
                    decoration: BoxDecoration(color: Colors.white),
                    padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Pause",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                          child: Icon(Icons.pause),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                    height: h * 0.11,
                    width: w,
                    decoration: BoxDecoration(color: Colors.white),
                    padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Stop",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                          child: Icon(Icons.stop),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                    height: h * 0.11,
                    width: w,
                    decoration: BoxDecoration(color: Colors.white),
                    padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Close",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                          child: Icon(Icons.close),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                    height: h * 0.11,
                    width: w,
                    decoration: BoxDecoration(color: Colors.white),
                    padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delete",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                          child: Icon(Icons.delete),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                    height: h * 0.11,
                    width: w,
                    decoration: BoxDecoration(color: Colors.white),
                    padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                          child: Icon(Icons.email),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
