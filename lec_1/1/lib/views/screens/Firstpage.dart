import 'package:flutter/material.dart';
import 'package:u91/utils/image.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  bool isList = true;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  const Text(
          "GALLERY VIEWER",style:TextStyle(
          letterSpacing: 5,
         ),
        ),
        actions: [
           GestureDetector(
             onTap: (){
               setState(() {
                 if (isList == true){
                   isList = false;
                 }
                 else{
                   isList = true;
                 }
               });
             },
             child: Padding(
              padding: const EdgeInsets.all(10),
              child:  Icon(Icons.view_comfortable),
          ),
           ),
        ],
      ),
      body: (isList) ?SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(10, (index) => Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: h*0.3,
              width: w,
              color: Colors.primaries[index+8 % 18],
              child: Image.asset(path + img[index],
              fit: BoxFit.fill,
               ),
              ),
             ),
           ),
          ),
        )
      : SingleChildScrollView(
        scrollDirection: Axis.horizontal,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(10, (index) => Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: h*0.3,
        width: w*0.3,
        color: Colors.primaries[index+8 % 18],
        child: Image.asset(path + img[index],
          fit: BoxFit.fill,
        ),
      ),
    ),
    ),
    ),
    ),
      );
  }
}
