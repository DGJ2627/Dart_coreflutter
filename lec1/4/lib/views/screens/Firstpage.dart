import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  List a = [1];
  Color? A;
  @override
  Widget build(BuildContext context) {
    int i=0;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dyanamic List",
        ),
        centerTitle: true,
        backgroundColor: Color(0xff214759),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: a.map((e) {
            (i%2==1)?A = const Color(0xff5689C0):A = const Color(0xff75E2FF);
            i++;
            return Container(
              margin: const EdgeInsets.only(top: 5, left: 10, bottom: 5),
              height: 100,
              width: 390,
              alignment: Alignment.center,
              child: Text("$i",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              decoration: BoxDecoration(
                color: A,
                borderRadius: BorderRadius.circular(10),
              ),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(25),
            onTap: (){
              setState((){
                i++;
                a.add(i);
              });
            },
            child: Container(
              height: 50,
              width: 50,
              child: const Icon(Icons.add, color: Colors.white),
              decoration: const BoxDecoration(
                color: Color(0xff244D61),
                shape: BoxShape.circle,
              ),
            ),
          ),const SizedBox(
            width: 8,
          ), InkWell(
            borderRadius: BorderRadius.circular(25),
            onTap: (){
              setState((){
                a.remove(i);
              });
            },
            child: Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              child: const Text("-",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
              decoration: const BoxDecoration(
                color: Color(0xff244D61),
                shape: BoxShape.circle,
              ),
            ),
          ),],
      ),


    );
  }
}
