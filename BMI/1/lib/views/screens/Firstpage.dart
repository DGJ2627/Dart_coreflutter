import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  String gender = "";
  double heigth = 0;
  double weigth = 0;
  int age = 2;
  double convertMeter = 0;
  double calculateBMI = 0;
  String finalAns = "";

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff090E21),
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Container(
                        height: h * 0.8,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "♀",
                              style: TextStyle(
                                fontSize: 55,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff1d1e33),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.symmetric(),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 3,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                        flex: 7,
                        child: Container(
                          height: h * 0.8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "♂",
                                style: TextStyle(
                                  fontSize: 55,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff1d1e33),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.symmetric(),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 3,
                                color: Colors.pink,
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: h,
                  width: w,
                  decoration: BoxDecoration(
                    // color: Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.symmetric(),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 3,
                        color: Colors.pink,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGTH",
                        style: TextStyle(
                          color: Color(0xff626473),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "  ${heigth.toInt()}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 55,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff626473),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Slider(
                          min: 0,
                          max: 200,
                          onChanged: (val) {
                            setState(() {
                              heigth = val;
                            });
                          },
                          value: heigth,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                        height: h,
                        width: w,
                        decoration: BoxDecoration(
                          color: Color(0xff1d1e33),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.symmetric(),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 3,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Weigth",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "${weigth.toInt()}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 53,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        (weigth > 0) ? weigth-- : null;
                                      });
                                    },
                                    child: Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0xff4C4F5E),
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                          fontSize: 35,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        weigth++;
                                      });
                                    },
                                    child: Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0xff4C4F5E),
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                          fontSize: 35,
                                          color: Color(0xffF67FA4),
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 8,
                      child: Container(
                        height: h,
                        width: w,
                        decoration: BoxDecoration(
                          color: Color(0xff1d1e33),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.symmetric(),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 3,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "$age",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 53,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        (age > 2) ? age-- : 2;
                                      });
                                    },
                                    child: Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          color: Color(0xff4C4F5E),
                                          shape: BoxShape.circle),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                          fontSize: 35,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0xff4C4F5E),
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                          fontSize: 35,
                                          color: Color(0xffF67FA4),
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(20),
                // child: InkWell(
                //   borderRadius: BorderRadius.circular(10),
                //   onTap: (){
                //     setState(() {
                //       if(age == "Male" || gender == "Female"){
                //         if(age>2){
                //           convertMeter =heigth/100;
                //           calculateBMI = weigth/(convertMeter*convertMeter);
                //           if(calculateBMI<18.5){
                //               finalAns = "Underweigth";
                //            }
                //           else if(calculateBMI >18.5&&calculateBMI<25){
                //             finalAns = "Normal weigth";
                //           }
                //           else if (calculateBMI >=25 && calculateBMI <30){
                //             finalAns = "Overweigth";
                //           }
                //           else {
                //             finalAns = "Obesity";
                //           }
                //          }
                //        }
                //       }
                //     );
                //   },
                //
                // ),
                child: Container(
                  height: h,
                  width: w,
                  decoration: BoxDecoration(
                    color: Color(0xffEB1555),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Calulate",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xff090E21),
    );
  }
}
