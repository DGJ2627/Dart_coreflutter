import 'dart:math';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int G1 = 1;
  int G2 = 2;

  @override
  Widget build(BuildContext context) {
    Random r = Random();

    G1 = r.nextInt(6) + 1;
    G2 = r.nextInt(6) + 1;

    int total = G1 + G2;
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Background.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                Spacer(),
                Text("Total Amount : $total"),
                Spacer(),
                Row(
                  children: [
                    Expanded(
                      flex: 25,
                      child: Image.asset(
                        "assets/images/$G1.png",
                        fit: BoxFit.cover,
                      ),

                    ),
                    Spacer(),
                    Expanded(
                      flex: 25,
                      child: Image.asset(
                        "assets/images/$G2.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    setState(() {

                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/images/Button.png"),
                      Text("Roll Dice",style: TextStyle(color: Colors.white10,fontWeight: FontWeight.bold,fontSize: 25),),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
