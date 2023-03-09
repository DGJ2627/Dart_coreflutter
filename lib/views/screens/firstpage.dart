import 'package:flutter/material.dart';
import 'package:viva_exam1/utils/utilsimages.dart';
import 'package:viva_exam1/views/screens/Homepage.dart';
import 'package:viva_exam1/views/screens/secondpage.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  double changeValue = 0;
  double _currentSliderValue = 0;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Budget Tracker",
        ),
        leading: Icon(Icons.calendar_month),
      ),
      body : Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Image.asset(height: 250,width: 250,'assets/images/expenses.jpg'),

               ],
             ),
            Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: h*0.1,
                  width: w*0.4,
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homepage(),));
                      });
                    },
                    child: Text(
                      "Expenses",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Spacer(),
                Container(
                  height: h*0.1,
                  width: w*0.4,
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> secondpage(),));
                      });
                    },
                    child: Text(
                      "Income",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
