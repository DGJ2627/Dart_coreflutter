import 'package:flutter/material.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    List character = ModalRoute.of(context)!.settings.arguments as List;
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("L.C.U"),
        centerTitle: true,
        backgroundColor: const Color(0xff10002B),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Card(
                shadowColor: Colors.purple,
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  height: 410,
                  width: w,
                  child: Image(
                    image: AssetImage(character[0]),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Card(
                shadowColor: Colors.red,
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 100,
                  width: w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        character[1],
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        character[2],
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Card(
                elevation: 10,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: w,
                  child: Text(
                    character[3],
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

