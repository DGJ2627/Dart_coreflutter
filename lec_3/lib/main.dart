import 'package:flutter/material.dart';

void main (){
  runApp(
     Gautam(),
  );
}


class Gautam extends StatefulWidget{
  const Gautam ({Key?  key}) : super(key : key);

  @override
  State<Gautam> createState() => _GautamState();
}

class _GautamState extends State<Gautam>{
  double a =70 , b = 70;
  @override
  Widget build (BuildContext Context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
      appBar: AppBar(
        title: Text("OPEN - CLOSE DOOR"),
        centerTitle: true,
        backgroundColor: Color(0xff191919),
      ),
      body: Align(
        child: InkWell(
          splashColor: Colors.black,
          onTap: () {
            setState(() {
              a+=10;
              b-=23;
            });
          },
          onDoubleTap: (){
            setState(() {
              a-=10;
              b+=23;
            });
          },
          child: Container(
            height: 320,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: Colors.black,
                  width: b,
                ),
                vertical: BorderSide(
                  color: Color(0xffC0C0C0),
                  width: a,
                ),
              ),
            ),
          ),
        ),
      ),
      ),
    );
  }
}