import 'package:flutter/material.dart';
import 'package:viva_exam1/answer/incomeanswer.dart';
class secondpage extends StatefulWidget {
  const secondpage({Key? key}) : super(key: key);

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  int sub=0;int add =0;

  double changeValue = 0;
  List Product = [
    {
      'id': '1',
      'Name': '💹  Dividends',
      'Category': 'Income',
      'price': '15000'
    },
    {
      'id': '2',
      'Name': '🏠  Rental',
      'Category': 'Income',
      'price': '10000'
    },
    {
      'id': '3',
      'Name': '🪙  Refunds',
      'Category': 'Income',
      'price': '5000'
    },
    {
      'id': '4',
      'Name': '💵  Salary',
      'Category': 'Income',
      'price': '80000'
    },
    {
      'id': '5',
      'Name': '🏛️  Fixedepoist',
      'Category': 'Income',
      'price': '15000'
    },
    {'id': '6',
      'Name': '🎁  Rewards',
      'Category': 'Income',
      'price': '1000'
    },
  ];
  @override
  Widget build(BuildContext context) {
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
                max: 100000,
                divisions: 10,
                onChanged: (double val){
                  setState(() {
                    changeValue = val;
                  });
                },
                value: changeValue,
              ),
              Text("Income < Rs. ${changeValue.toInt()}",
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
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => incomeanswer(),));
        },
      ),
    );
  }
}
