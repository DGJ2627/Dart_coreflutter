import 'package:flutter/material.dart';
import 'package:viva_exam1/answer/totalanswer.dart';

class expensesanswer extends StatefulWidget {
  const expensesanswer({Key? key}) : super(key: key);

  @override
  State<expensesanswer> createState() => _expensesanswerState();
}

class _expensesanswerState extends State<expensesanswer> {
  int add_expenses = 0;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Total Expenses",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 100,
                width: w,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(0,2),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Expenses",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Text("${add_expenses}",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff222222),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 90,
                width: w,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(0,2),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("1",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("🍉  Food",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff222222),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Expenses",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffB5B5B5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Rs.5000",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: h*0.08,
                      width: w*0.4,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: TextButton(onPressed: (){
                            setState(() {
                              add_expenses-=5000;
                            });
                          }, child: Text("-",
                          style: TextStyle(fontSize: 30,color: Colors.black,),),),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: h*0.08,
                      width: w*0.4,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: TextButton(onPressed: (){
                            setState(() {
                              add_expenses+=5000;
                            });
                          }, child: Text("+",style: TextStyle(fontSize: 25,color: Colors.black,),),),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 90,
                width: w,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(0,2),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("2",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("🏠  Home",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff222222),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Expenses",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffB5B5B5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Rs.10000",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: h*0.08,
                      width: w*0.4,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextButton(onPressed: (){
                          setState(() {
                            add_expenses-=10000;
                          });
                        }, child: Text("-",
                          style: TextStyle(fontSize: 30,color: Colors.black,),),),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: h*0.08,
                      width: w*0.4,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextButton(onPressed: (){
                          setState(() {
                            add_expenses+=10000;
                          });
                        }, child: Text("+",style: TextStyle(fontSize: 25,color: Colors.black,),),),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 90,
                width: w,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(0,2),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("3",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("👕  Clothes",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff222222),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Expenses",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffB5B5B5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Rs.5000",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: h*0.08,
                      width: w*0.4,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextButton(onPressed: (){
                          setState(() {
                            add_expenses-=5000;
                          });
                        }, child: Text("-",
                          style: TextStyle(fontSize: 30,color: Colors.black,),),),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: h*0.08,
                      width: w*0.4,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextButton(onPressed: (){
                          setState(() {
                            add_expenses+=5000;
                          });
                        }, child: Text("+",style: TextStyle(fontSize: 25,color: Colors.black,),),),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 90,
                width: w,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(0,2),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("4",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("🚗  Car",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff222222),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Expenses",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffB5B5B5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Rs.8000",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: h*0.08,
                      width: w*0.4,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextButton(onPressed: (){
                          setState(() {
                            add_expenses-=8000;
                          });
                        }, child: Text("-",
                          style: TextStyle(fontSize: 30,color: Colors.black,),),),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: h*0.08,
                      width: w*0.4,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextButton(onPressed: (){
                          setState(() {
                            add_expenses+=8000;
                          });
                        }, child: Text("+",style: TextStyle(fontSize: 25,color: Colors.black,),),),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 90,
                width: w,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(0,2),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("5",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("👟  Shoes",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff222222),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Expenses",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffB5B5B5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Rs.1500",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: h*0.08,
                      width: w*0.4,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextButton(onPressed: (){
                          setState(() {
                            add_expenses-=1500;
                          });
                        }, child: Text("-",
                          style: TextStyle(fontSize: 30,color: Colors.black,),),),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: h*0.08,
                      width: w*0.4,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextButton(onPressed: (){
                          setState(() {
                            add_expenses+=1500;
                          });
                        }, child: Text("+",style: TextStyle(fontSize: 25,color: Colors.black,),),),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 90,
                width: w,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(0,2),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("6",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("📱  Recharge",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff222222),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Expenses",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffB5B5B5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Rs.1000",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: h*0.08,
                      width: w*0.4,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextButton(onPressed: (){
                          setState(() {
                            add_expenses-=1000;
                          });
                        }, child: Text("-",
                          style: TextStyle(fontSize: 30,color: Colors.black,),),),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: h*0.08,
                      width: w*0.4,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextButton(onPressed: (){
                          setState(() {
                            add_expenses+=1000;
                          });
                        }, child: Text("+",style: TextStyle(fontSize: 25,color: Colors.black,),),),
                      ),
                    ),
                  ],
                ),
              ),
                Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 100,
                  width: w,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(0,2),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child:GestureDetector(
                    onTap: (){
                      setState(() {
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> totalanswer(answer: add_expenses),));
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Count Total Expenses",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 30),

                      ],
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
