import 'package:flutter/material.dart';


class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key : key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  int N = 0;
  @override

  Widget build(BuildContext context){

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Calc",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          leading: const Icon(Icons.menu),
          backgroundColor: const Color(0xff5479E),
        ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 360,
                color: const Color(0xffEEEEEE),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 150,
                width: 360,
                color: const Color(0xffEEEEEE),
                alignment: Alignment.topCenter,
                child: Text(
                  "$N",
                  style: const TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.w400,
                  ),

                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    N-=2;
                  });
                },
                child: Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                    color: const Color(0xff54759E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: const Text("-2",
                  style: TextStyle(
                      color: Colors.white,
                    fontSize: 25,
                    ),
                  ),
                ),
              ),

              InkWell(
                onTap: (){
                  setState(() {
                    N+=2;
                  });
                },
                child: Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                    color: const Color(0xff54759E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: const Text("+2",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    N-=4;
                  });
                },
                child: Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                    color: const Color(0xff54759E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: const Text("-4",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    N+=4;
                  });
                },
                child: Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                    color: const Color(0xff54759E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: const Text("+4",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    N = 0;
                  });
                },
                child: Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                    color: const Color(0xff54759E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Clear",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
       ),
      backgroundColor: const Color(0xffEEEEEE),
      );
  }
}