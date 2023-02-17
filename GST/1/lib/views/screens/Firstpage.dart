import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  String selectColor = "";
  String selectNumber = "";
  double selectGst = 0;
  double calculateNumber = 0;
  double gst = 0;
  double calculateGst = 0;
  double csGst = 0;


  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h =s.height;
    double w =s.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(height: 40),
                Container(
                  height: 40,
                  width: w,
                  color: const Color(0xffE9E9E9),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("ORIGINAL PRICE",
                          style: TextStyle(
                            color: Color(0xff252427),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text("${selectNumber.toString()} Rs.",
                          style: const TextStyle(
                            color: Color(0xff252427),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: w,
                  color: const Color(0xffE9E9E9),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text("GST",
                        style: TextStyle(
                          color: Color(0xff252427),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                selectColor = "3%";
                                selectGst = 3;
                                calculateNumber = double.parse(selectNumber);
                                gst = (calculateNumber * selectGst) / 100;
                                calculateGst = ((calculateNumber) + gst);
                                csGst = gst / 2;
                              });
                            },
                            child: Container(
                              height: 35,
                              width: w / 6,
                              decoration: BoxDecoration(
                                color: selectColor == "3%" ? const Color(0xffFF6B00): Colors.transparent,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              alignment: Alignment.center,
                              child: Text("3%",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: selectColor == "3%" ? const Color(0xffFFFFFF): Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                selectColor = "5%";
                                selectGst = 5;
                                calculateNumber = double.parse(selectNumber);
                                gst = (calculateNumber * selectGst) / 100;
                                calculateGst = ((calculateNumber) + gst);
                                csGst = gst / 2;
                              });
                            },
                            child: Container(
                              height: 35,
                              width: w / 6,
                              decoration: BoxDecoration(
                                color: selectColor == "5%" ? const Color(0xffFF6B00): Colors.transparent,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              alignment: Alignment.center,
                              child: Text("5%",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: selectColor == "5%" ? const Color(0xffFFFFFF): Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                selectColor = "12%";
                                selectGst = 12;
                                calculateNumber = double.parse(selectNumber);
                                gst = (calculateNumber * selectGst) / 100;
                                calculateGst = ((calculateNumber) + gst);
                                csGst = gst / 2;
                              });
                            },
                            child: Container(
                              height: 35,
                              width: w / 6,
                              decoration: BoxDecoration(
                                color: selectColor == "12%" ? const Color(0xffFF6B00): Colors.transparent,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              alignment: Alignment.center,
                              child: Text("12%",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: selectColor == "12%" ? const Color(0xffFFFFFF): Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                selectColor = "18%";
                                selectGst = 18;
                                calculateNumber = double.parse(selectNumber);
                                gst = (calculateNumber * selectGst) / 100;
                                calculateGst = ((calculateNumber) + gst);
                                csGst = gst / 2;
                              });
                            },
                            child: Container(
                              height: 35,
                              width: w / 6,
                              decoration: BoxDecoration(
                                color: selectColor == "18%" ? const Color(0xffFF6B00): Colors.transparent,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              alignment: Alignment.center,
                              child: Text("18%",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: selectColor == "18%" ? const Color(0xffFFFFFF): Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                selectColor = "28%";
                                selectGst = 28;
                                calculateNumber = double.parse(selectNumber);
                                gst = (calculateNumber * selectGst) / 100;
                                calculateGst = ((calculateNumber) + gst);
                                csGst = gst / 2;
                              });
                            },
                            child: Container(
                              height: 35,
                              width: w / 6,
                              decoration: BoxDecoration(
                                color: selectColor == "28%" ? const Color(0xffFF6B00): Colors.transparent,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              alignment: Alignment.center,
                              child: Text("28%",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: selectColor == "28%" ? const Color(0xffFFFFFF): Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: w,
                  color: const Color(0xffE9E9E9),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("FINAL PRICE",
                          style: TextStyle(
                            color: Color(0xff252427),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text("${calculateGst.toStringAsFixed(2)} Rs.",
                          style: const TextStyle(
                            color: Color(0xff252427),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: w / 1.5,
                  decoration: BoxDecoration(
                    color: const Color(0xffE9E9E9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("CGST/SGST",
                        style: TextStyle(
                          color: Color(0xff252427),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(csGst.toStringAsFixed(2),
                        style: const TextStyle(
                          color: Color(0xff252427),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            splashFactory: NoSplash.splashFactory,
                            onTap: (){
                              setState(() {
                                selectNumber+="7";
                                calculateNumber = double.parse(selectNumber);
                                gst = (calculateNumber * selectGst) / 100;
                                calculateGst = ((calculateNumber) + gst);
                                csGst = gst / 2;
                              });
                            },
                            child: Container(
                              height: h / 8.75,
                              width: w / 4,
                              alignment: Alignment.center,
                              child: const Text("7",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff28272A),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashFactory: NoSplash.splashFactory,
                            onTap: (){
                              setState(() {
                                selectNumber+="8";
                                calculateNumber = double.parse(selectNumber);
                                gst = (calculateNumber * selectGst) / 100;
                                calculateGst = ((calculateNumber) + gst);
                                csGst = gst / 2;
                              });
                            },
                            child: Container(
                              height: h / 8.75,
                              width: w / 4,
                              alignment: Alignment.center,
                              child: const Text("8",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff28272A),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashFactory: NoSplash.splashFactory,
                            onTap: (){
                              setState(() {
                                selectNumber+="9";
                                calculateNumber = double.parse(selectNumber);
                                gst = (calculateNumber * selectGst) / 100;
                                calculateGst = ((calculateNumber) + gst);
                                csGst = gst / 2;
                              });
                            },
                            child: Container(
                              height: h / 8.75,
                              width: w / 4,
                              alignment: Alignment.center,
                              child: const Text("9",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff28272A),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            splashFactory: NoSplash.splashFactory,
                            onTap: (){
                              setState(() {
                                selectNumber+="4";
                                calculateNumber = double.parse(selectNumber);
                                gst = (calculateNumber * selectGst) / 100;
                                calculateGst = ((calculateNumber) + gst);
                                csGst = gst / 2;
                              });
                            },
                            child: Container(
                              height: h / 8.75,
                              width: w / 4,
                              alignment: Alignment.center,
                              child: const Text("4",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff28272A),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashFactory: NoSplash.splashFactory,
                            onTap: (){
                              setState(() {
                                selectNumber+="5";
                                calculateNumber = double.parse(selectNumber);
                                gst = (calculateNumber * selectGst) / 100;
                                calculateGst = ((calculateNumber) + gst);
                                csGst = gst / 2;
                              });
                            },
                            child: Container(
                              height: h / 8.75,
                              width: w / 4,
                              alignment: Alignment.center,
                              child: const Text("5",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff28272A),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashFactory: NoSplash.splashFactory,
                            onTap: (){
                              setState(() {
                                selectNumber+="6";
                                calculateNumber = double.parse(selectNumber);
                                gst = (calculateNumber * selectGst) / 100;
                                calculateGst = ((calculateNumber) + gst);
                                csGst = gst / 2;
                              });
                            },
                            child: Container(
                              height: h / 8.75,
                              width: w / 4,
                              alignment: Alignment.center,
                              child: const Text("6",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff28272A),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            splashFactory: NoSplash.splashFactory,
                            onTap: (){
                              setState(() {
                                selectNumber+="1";
                                calculateNumber = double.parse(selectNumber);
                                gst = (calculateNumber * selectGst) / 100;
                                calculateGst = ((calculateNumber) + gst);
                                csGst = gst / 2;
                              });
                            },
                            child: Container(
                              height: h / 8.75,
                              width: w / 4,
                              alignment: Alignment.center,
                              child: const Text("1",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff28272A),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashFactory: NoSplash.splashFactory,
                            onTap: (){
                              setState(() {
                                selectNumber+="2";
                                calculateNumber = double.parse(selectNumber);
                                gst = (calculateNumber * selectGst) / 100;
                                calculateGst = ((calculateNumber) + gst);
                                csGst = gst / 2;
                              });
                            },
                            child: Container(
                              height: h / 8.75,
                              width: w / 4,
                              alignment: Alignment.center,
                              child: const Text("2",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff28272A),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashFactory: NoSplash.splashFactory,
                            onTap: (){
                              setState(() {
                                selectNumber+="3";
                                calculateNumber = double.parse(selectNumber);
                                gst = (calculateNumber * selectGst) / 100;
                                calculateGst = ((calculateNumber) + gst);
                                csGst = gst / 2;
                              });
                            },
                            child: Container(
                              height: h / 8.75,
                              width: w / 4,
                              alignment: Alignment.center,
                              child: const Text("3",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff28272A),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            splashFactory: NoSplash.splashFactory,
                            onTap: (){
                              setState(() {
                                selectNumber+="00";
                                calculateNumber = double.parse(selectNumber);
                                gst = (calculateNumber * selectGst) / 100;
                                calculateGst = ((calculateNumber) + gst);
                                csGst = gst / 2;
                              });
                            },
                            child: Container(
                              height: h / 8.75,
                              width: w / 4,
                              alignment: Alignment.center,
                              child: const Text("00",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff28272A),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashFactory: NoSplash.splashFactory,
                            onTap: (){
                              setState(() {
                                selectNumber+="0";
                                calculateNumber = double.parse(selectNumber);
                                gst = (calculateNumber * selectGst) / 100;
                                calculateGst = ((calculateNumber) + gst);
                                csGst = gst / 2;
                              });
                            },
                            child: Container(
                              height: h / 8.75,
                              width: w / 4,
                              alignment: Alignment.center,
                              child: const Text("0",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff28272A),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashFactory: NoSplash.splashFactory,
                            onTap: (){
                              setState(() {
                                selectNumber+=".";
                              });
                            },
                            child: Container(
                              height: h / 8.75,
                              width: w / 4,
                              alignment: Alignment.center,
                              child: const Text(".",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff28272A),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: (){
                              setState(() {
                                selectNumber = "";
                                calculateGst = 0;
                                csGst = 0;
                              });
                            },
                            child: Container(
                              height: 100,
                              width: w,
                              decoration: BoxDecoration(
                                color: const Color(0xffFF6B00),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: const Text("AC",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(100),
                            onTap: (){
                              setState(() {
                                selectNumber = selectNumber.substring(0, selectNumber.length - 1);
                                print(selectNumber);
                                calculateNumber = double.parse(selectNumber);
                                gst = (calculateNumber * selectGst) / 100;
                                calculateGst = ((calculateNumber) + gst);
                                csGst = gst / 2;
                              });
                            },
                            child: Container(
                              height: 100,
                              width: w,
                              decoration: BoxDecoration(
                                color: const Color(0xffFF6B00),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: const Icon(Icons.backspace_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
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
          const SizedBox(height: 70),
        ],
      ),
    );

  }
}
