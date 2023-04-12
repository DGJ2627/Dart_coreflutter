import 'package:flutter/material.dart';
import 'dart:math';
class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  int value = 0;
  List myColor = const [
    {
      'appBarColor': Color(0xff85586F),
      'bgContainerColor1': Color(0xffAC7D88),
      'bgContainerColor2':Color(0xffDEB6AB),
      'lotteryNumberColor': Color(0xffF8ECD1),
      'buttonBorderColor': Color(0xff85586F),
    }
  ];
  @override
  Widget build(BuildContext context) {

    Random r1 = Random();
    int n1 = r1.nextInt(10);
    int n2 = r1.nextInt(10);
    int n3 = r1.nextInt(10);
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title: const Text(
            "Lottery App"
        ),
        backgroundColor: myColor[0]['appBarColor'],
        actions: [
          InkWell(
              splashFactory: NoSplash.splashFactory,
              onTap: (){
                setState(() {
                  value++;
                  if(value%2 == 0)
                  {
                    myColor = const [
                      {
                        'appBarColor': Color(0xff85586F),
                        'bgContainerColor1': Color(0xffAC7D88),
                        'bgContainerColor2':Color(0xffDEB6AB),
                        'lotteryNumberColor': Color(0xffF8ECD1),
                        'buttonBorderColor': Color(0xff85586F),
                      }
                    ];
                  }
                  else
                  {
                    myColor = const [
                      {
                        'appBarColor': Color(0xff82954B),
                        'bgContainerColor1': Color(0xffBABD42),
                        'bgContainerColor2': Color(0xffEFD345),
                        'lotteryNumberColor': Color(0xffFFEF82),
                        'buttonBorderColor': Color(0xff82954B),
                      }
                    ];
                  }
                });
              },
              child: const Icon(Icons.workspaces_outline)
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: h / 3.3,
            width: w,
            color: myColor[0]['bgContainerColor1'],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: h / 12,
                  width: w / 4,
                  decoration: BoxDecoration(
                    color: myColor[0]['bgContainerColor2'],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Text("$n1",
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: h / 12,
                  width: w / 4,
                  decoration: BoxDecoration(
                    color: myColor[0]['bgContainerColor2'],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Text("$n2",
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: h / 12,
                  width: w / 4,
                  decoration: BoxDecoration(
                    color: myColor[0]['bgContainerColor2'],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Text("$n3",
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: (){
              setState(() {});
            },
            child: Container(
              height: h / 12,
              width: w / 3,
              decoration: BoxDecoration(
                color: myColor[0]['lotteryNumberColor'],
                border: Border.all(
                  color: myColor[0]['buttonBorderColor'],
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: const Text("Get Lottery",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }

}
