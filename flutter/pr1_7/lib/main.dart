import 'package:flutter/material.dart';

void main (){
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("RED & WHITE",
            style: TextStyle (
              color: Colors.white,
            ),
            ),
            centerTitle: true,
            backgroundColor: Colors.red,
          ),
          body: Center (
            child: RichText(
              textAlign: TextAlign.start,
              text: const TextSpan(
              children: [
                  TextSpan(
                      text:"           G",
                      style:TextStyle(
                          color: Colors.green,
                          fontSize: 16,

                      ),
                  ),
                TextSpan(
                  text:" R ",
                  style:TextStyle(
                    color: Colors.red,
                    fontSize: 20,

                  ),
                ),
                TextSpan(
                  text:"APHICS\n",
                  style:TextStyle(
                    color: Colors.green,
                    fontSize: 15,

                  ),
                ),

                TextSpan(
                  text:"   FLUTT",
                  style:TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 15,

                  ),
                ),
                TextSpan(
                  text:" E ",
                  style:TextStyle(
                    color: Colors.red,
                    fontSize: 20,

                  ),
                ),
                TextSpan(
                  text:"R\n",
                  style:TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 15,

                  ),
                ),

                TextSpan(
                  text:"        AN",
                  style:TextStyle(
                    color: Colors.green,
                    fontSize: 16,

                  ),
                ),
                TextSpan(
                  text:" D ",
                  style:TextStyle(
                    color: Colors.red,
                    fontSize: 20,

                  ),
                ),
                TextSpan(
                  text:"ROID\n",
                  style:TextStyle(
                    color: Colors.green,
                    fontSize: 15,

                  ),
                ),

                TextSpan(
                  text:"DESIGN",
                  style:TextStyle(
                    color: Colors.orange,
                    fontSize: 15,

                  ),
                ),
                TextSpan(
                  text:" & ",

                  style:TextStyle(
                    color: Colors.red,
                    fontSize: 20,


                  ),
                ),
                TextSpan(
                  text:"DEVELOP\n",
                  style:TextStyle(
                    color: Colors.orange,
                    fontSize: 15,

                  ),
                ),

                TextSpan(
                  text:"           W ",
                  style:TextStyle(
                    color: Colors.red,
                    fontSize: 20,

                  ),
                ),
                TextSpan(
                  text:"EB\n",
                  style:TextStyle(
                    color: Colors.blue,
                    fontSize: 15,

                  ),
                ),

                TextSpan(
                  text:"       FAS",
                  style:TextStyle(
                    color: Colors.yellow,
                    fontSize: 15,

                  ),
                ),
                TextSpan(
                  text:" H ",
                  style:TextStyle(
                    color: Colors.red,
                    fontSize: 20,

                  ),
                ),
                TextSpan(
                  text:"ION\n",
                  style:TextStyle(
                    color: Colors.yellow,
                    fontSize: 15,

                  ),
                ),

                TextSpan(
                  text:"ANIMAT",
                  style:TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 15,

                  ),
                ),
                TextSpan(
                  text:" I ",
                  style:TextStyle(
                    color: Colors.red,
                    fontSize: 20,

                  ),
                ),
                TextSpan(
                  text:"ON\n",
                  style:TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 15,

                  ),
                ),

                TextSpan(
                  text:"             I",
                  style:TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 15,

                  ),
                ),
                TextSpan(
                  text:" T ",
                  style:TextStyle(
                    color: Colors.red,
                    fontSize: 20,

                  ),
                ),
                TextSpan(
                  text:"A-CS+\n",
                  style:TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 15,

                  ),
                ),

                TextSpan(
                  text:"     GAM",
                  style:TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 15,

                  ),
                ),
                TextSpan(
                  text:" E ",
                  style:TextStyle(
                    color: Colors.red,
                    fontSize: 20,

                  ),
                ),

              ],
             ),
            ),
          ),
          backgroundColor: Colors.black,
        ),
    ),
  );
}