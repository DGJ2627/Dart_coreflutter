import 'dart:math';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  String value = "";
  int n1 = 0, n2 = 0, n3 = 0, n4 = 0 ,n5 = 0, n6 = 0;
  final number = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Random r1 = Random ();
    Size s = MediaQuery.of(context).size;
    double h = s .height;
    double w = s. width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "OTP Generator",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xffF6DB87),
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Expanded(flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
               TextField(
                 controller: number,
                 maxLength: 1,
                 onChanged: (txt){
                      value = txt;
                  },
                 style: const TextStyle(
                   color: Color(0xffFCF6BA),
                   fontSize: 25,
                   fontWeight: FontWeight.w600,
                 ),
                 decoration: const InputDecoration(
                   counterText: "",
                   enabledBorder: UnderlineInputBorder(
                     borderSide: BorderSide(
                         width: 2,
                         color: Color(0xffF3EEB4)
                     ),
                   ),
                   hintText: "Enter OTP Length",
                   hintStyle: TextStyle(
                     fontSize: 20,
                     color: Color(0xff515251),
                   ),
                 ),
               ),
              Spacer(),
              Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffFFE8B8),
                      Color(0xffF6DB87),
                    ],
                  ),
                  boxShadow: const [
                    BoxShadow(

                      color: Color(0xff4D4E4E),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: InkWell(
                  splashFactory: NoSplash.splashFactory,
                  borderRadius: BorderRadius.circular(15),
                  onTap: (){
                    setState(() {
                      if(int.parse(value) == 1){
                        n1 = 0;
                        n2 = 0;
                        n3 = 0;
                        n4 = 0;
                        n5 = 0;
                        n6 = r1.nextInt(9) + 1;
                      }
                      else if(int.parse(value) == 2){
                        n1 = 0;
                        n2 = 0;
                        n3 = 0;
                        n4 = 0;
                        n5 = r1.nextInt(9) + 1;
                        n6 = r1.nextInt(10);
                      }
                      else if(int.parse(value) == 3){
                        n1 = 0;
                        n2 = 0;
                        n3 = 0;
                        n4 = r1.nextInt(9) + 1;
                        n5 = r1.nextInt(10);
                        n6 = r1.nextInt(10);
                      }
                      else if(int.parse(value) == 4){
                        n1 = 0;
                        n2 = 0;
                        n3 = r1.nextInt(9) + 1;
                        n4 = r1.nextInt(10);
                        n5 = r1.nextInt(10);
                        n6 = r1.nextInt(10);
                      }
                      else if(int.parse(value) == 5){
                        n1 = 0;
                        n2 = r1.nextInt(9) + 1;
                        n3 = r1.nextInt(10);
                        n4 = r1.nextInt(10);
                        n5 = r1.nextInt(10);
                        n6 = r1.nextInt(10);
                      }
                      else if(int.parse(value) == 6){
                        n1 = r1.nextInt(9) + 1;
                        n2 = r1.nextInt(10);
                        n3 = r1.nextInt(10);
                        n4 = r1.nextInt(10);
                        n5 = r1.nextInt(10);
                        n6 = r1.nextInt(10);
                      }
                      else if(value == ""){
                        n1 = 0;
                        n2 = 0;
                        n3 = 0;
                        n4 = 0;
                        n5 = 0;
                        n6 = 0;
                      }
                    });
                  },
                  child: Container(
                    height: h*0.1,
                    width: w*0.7,
                    alignment: Alignment.center,
                    child: const Text(
                      "Generate OTP",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff13152A),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffFFE8B8),
                      Color(0xffF6DB87),
                    ],
                  ),
                ),
                child: InkWell(
                  onTap: (){
                      Clipboard.setData(
                        ClipboardData(
                          text: "$n1$n2$n3$n4$n5$n6",
                        ),
                      );
                  },

                  child: Container(
                    height: h*0.1,
                    width: w*2,
                    alignment: Alignment.center,
                    child: Text(
                      "$n1    $n2    $n3    $n4    $n5    $n6",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff13152A),
                      ),
                    ),
                  ),
                ),
              ),
            Spacer(),
              Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    colors:
                    [
                      Color(0xffFFE8B8),
                      Color(0xffF6DB87),
                    ],
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: (){
                  setState(() {
                    n1 = 0;
                    n2 = 0;
                    n3 = 0;
                    n4 = 0;
                    n5 = 0;
                    n6 = 0;
                    number.clear();
                    value = "";
                  });
                },
                child: Container(
                  height: h*0.1,
                  width: w*0.6,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors:
                      [
                        Color(0xffFFE8B8),
                        Color(0xffF6DB87),
                      ],
                    ),
                  ),
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

