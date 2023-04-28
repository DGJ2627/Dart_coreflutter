import 'dart:async';

import 'package:flutter/material.dart';

class stop_page extends StatefulWidget {
  const stop_page({Key? key}) : super(key: key);

  @override
  State<stop_page> createState() => _stop_pageState();
}

class _stop_pageState extends State<stop_page> {
  int sec = 0;
  int min = 0;
  int hw = 0;



  Time() {
    setState(() {
      Future.delayed(const Duration(seconds: 1), () {
        sec++;

        if (hw > 12) {
          hw -= 12;
        }
        if (sec > 59) {
          min++;
          sec = 0;
        }
        if (min > 59) {
          hw++;
          min = 0;
        }
        Time();
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Timer"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: h * 0.5,
            width: w,
            alignment: Alignment.center,
            child: Text(
              "$hw : $min : $sec",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          Container(
            height: h * 0.2,
            width: w,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    Time();
                  },
                  icon: Icon(Icons.play_arrow),
                ),
                IconButton(
                  onPressed: () {
                    sec = sec;
                  },
                  icon: Icon(Icons.stop),
                ),
                IconButton(
                  onPressed: () async{
                    sec = 1;
                    min = 0;
                    hw = 0;

                    await Time();
                    sec --;
                  },
                  icon: Icon(Icons.restart_alt),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


}
