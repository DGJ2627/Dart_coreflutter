import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  IconData MYicon = Icons.abc_rounded;
  Color MYcolor = Colors.red;

  List MYlogo = [
    const Icon(
      Icons.accessibility,
      size: 50,
    ),
    const Icon(
      Icons.accessible_rounded,
      size: 50,
    ),
    const Icon(
      Icons.account_balance_sharp,
      size: 50,
    ),
    const Icon(
      Icons.account_balance_wallet_rounded,
      size: 50,
    ),
    const Icon(
      Icons.add_a_photo,
      size: 50,
    ),
    const Icon(
      Icons.add_chart,
      size: 50,
    ),
    const Icon(
      Icons.ad_units_sharp,
      size: 50,
    ),
    const Icon(
      Icons.menu,
      size: 50,
    ),
  ];
  List CCC = List.generate(18, (i) => i++);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Icons Editor",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 20,
              child: Container(
                alignment: Alignment.center,
                height: h * 0.3,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Icon(
                  MYicon,
                  color: MYcolor,
                  size: 250,
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: Container(
                alignment: Alignment.center,
                height: h * 0.3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Text(
                  "Select Color",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Spacer(),
            Expanded(
              flex: 10,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: CCC.map((e) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            MYcolor = Colors.primaries[e];
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: h * 0.2,
                          width: h * 0.2,
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.primaries[e],
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            Spacer(),
            Expanded(
              flex: 10,
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                height: h*0.2,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: MYlogo.map((e) {
                      return InkWell(
                        onTap: (){
                          setState(() {
                            MYicon = e.icon;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: h*0.2,
                          width: w*0.4,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          child: e,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
