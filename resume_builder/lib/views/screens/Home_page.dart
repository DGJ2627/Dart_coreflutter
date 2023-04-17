import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 140,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Resume Builder"),
            SizedBox(height: 20,),
            Text("RESUMES"),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 5),
            Image.asset("assets/images/open-cardboard-box.png",height: 80,),
            Spacer(flex: 2),
            const Text("No Resumes + Create new resume",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            Spacer(flex: 40),
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
        child:const Icon(
          CupertinoIcons.add,size: 50,
        ),
        onPressed: (){
          Navigator.of(context).pushNamed("build_option");
        },
      ),
    );
  }
}
