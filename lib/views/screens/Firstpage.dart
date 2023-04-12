import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double H = s.height;
    double W = s.width;
    List quiz = ModalRoute.of(context)!.settings.arguments as List;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Result",
          style: TextStyle(fontSize: 26,color: Colors.white),
        ),
        backgroundColor: const Color(0xff2D4159),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: 230,
              image: AssetImage(quiz[0]),
            ),
            const SizedBox(height: 30),
            Text(quiz[1],
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 50),
            Text(quiz[2],
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 50),
            InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 70,
                width: W / 2,
                decoration: BoxDecoration(
                  color: const Color(0xffE6812F),
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: Text(quiz[3],
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xff242A40),

    );
  }
}
