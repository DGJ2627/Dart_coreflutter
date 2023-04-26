import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class splash_page extends StatefulWidget {
  const splash_page({Key? key}) : super(key: key);

  @override
  State<splash_page> createState() => _splash_pageState();
}

class _splash_pageState extends State<splash_page> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer( const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.network("https://static.vecteezy.com/system/resources/previews/000/606/650/original/vector-letter-a-logo-business-corporation-logo-design-concept-templat.jpg"),
              ),
              //
              Text("Invoice Generator",style: GoogleFonts.abyssinicaSil(fontSize: 20),),
              const SizedBox(height: 20,),
              const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
