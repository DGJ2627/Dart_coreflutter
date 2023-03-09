import 'package:flutter/material.dart';
import 'package:viva_exam1/answer/expensesanser.dart';
import 'package:viva_exam1/views/screens/firstpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  int sub=0;int add =0;

  double changeValue = 0;
  List Product = [
    {
      'id': '1',
      'Name': '🍉  Food',
      'Category': 'Expenses',
      'price': '5000'
    },
    {
      'id': '2',
      'Name': '🏠  Home',
      'Category': 'Expenses',
      'price': '10000'
    },
    {
      'id': '3',
      'Name': '👕  Clothes',
      'Category': 'Expenses',
      'price': '5000'
    },
    {
      'id': '4',
      'Name': '🚗  Car',
      'Category': 'Expenses',
      'price': '8000'
    },
    {
      'id': '5',
      'Name': '👟  Shoes',
      'Category': 'Expenses',
      'price': '1500'
    },
    {'id': '6',
      'Name': '📱  Recharge',
      'Category': 'Expenses',
      'price': '1000'
    },
  ];
  @override
  Widget build(BuildContext context) {
    double expenses =0;

    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Budget Tracer",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Slider(
                min: 0,
                max: 20000,
                divisions: 10,
                onChanged: (double val){
                  setState(() {
                    changeValue = val;
                  });
                },
                value: changeValue,
              ),
              Text("Expanses < Rs. ${changeValue.toInt()}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              SingleChildScrollView(
                child: Column(
                  children: Product.map((e){
                    if(double.parse(e['price']) <= changeValue)
                    {
                      return Container(
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
                            Text(e['id'],
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 30),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(e['Name'],
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff222222),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(e['Category'],
                                  style: const TextStyle(
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
                                child: Text("Rs. ${e['price']}",
                                  style: const TextStyle(
                                    color: Color(0xffB6B6B6),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }

                    return Container();
                  }).toList(),

                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => expensesanswer(),));
        },
      ),
    );
  }
}
