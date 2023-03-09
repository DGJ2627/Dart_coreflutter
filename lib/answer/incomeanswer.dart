import 'package:flutter/material.dart';

class incomeanswer extends StatefulWidget {
  const incomeanswer({Key? key}) : super(key: key);

  @override
  State<incomeanswer> createState() => _incomeanswerState();
}

class _incomeanswerState extends State<incomeanswer> {
  int add_income = 0;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Total Incomes",
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
                    const Text("Income",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Text("${add_income}",
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
                        Text("💹  Dividends",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff222222),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Income",
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
                            "Rs.15000",
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
                            add_income-=15000;
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
                            add_income+=15000;
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
                        Text("🏠  Rental",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff222222),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Income",
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
                            add_income-=10000;
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
                            add_income+=10000;
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
                        Text("🪙  Refunds",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff222222),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Income",
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
                            add_income-=5000;
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
                            add_income+=5000;
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
                        Text("💵  Salary",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff222222),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Income",
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
                            "Rs.800000",
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
                            add_income-=80000;
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
                            add_income+=80000;
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
                        Text("🏛️  Fixedepoist",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff222222),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Income",
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
                            "Rs.15000",
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
                            add_income-=15000;
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
                            add_income+=15000;
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
                        Text("🎁  Rewards",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff222222),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Income",
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
                            add_income-=1000;
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
                            add_income+=1000;
                          });
                        }, child: Text("+",style: TextStyle(fontSize: 25,color: Colors.black,),),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
