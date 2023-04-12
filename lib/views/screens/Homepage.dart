import 'package:flutter/material.dart';
import 'package:kbc_game/modals/question.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List <Map < String ,dynamic > > quiz = [
    {
      'no': 1,
      'question': 'Which is greater than 4?',
      'A': '5',
      'B': '-5',
      'C': '-1/2',
      'D': '-25',
      'ans': 'A',
    },
    {
      'no': 2,
      'question': 'Which is the smallest?',
      'A': '-1',
      'B': '-1/2',
      'C': '0',
      'D': '3',
      'ans': 'A',
    },
    {
      'no': 3,
      'question': 'Combine terms: 12a + 26b -4b – 16a.',
      'A': '4a + 22b',
      'B': '-28a + 30b',
      'C': '-4a + 22b',
      'D': '28a + 30b',
      'ans': 'C',
    },
    {
      'no': 4,
      'question': 'Simplify: (4 – 5) – (13 – 18 + 2)',
      'A': '-1',
      'B': '-2',
      'C': '1',
      'D': '2',
      'ans': 'D',
    },
    {
      'no': 5,
      'question': 'What is |-26|?',
      'A': '-26',
      'B': '26',
      'C': '0',
      'D': '1',
      'ans': 'B',
    },

  ];

  int value = 0, score = 0, price = 0;
  String nextpage = "Next Quiz", nextText = "Next";
  var image;
  String ansText = "",priceText ="",ans="";
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double H = s.height;
    double W = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff2D4159),
        title: const Text(
          "Quiz App",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: const Padding(
          padding: EdgeInsets.all(8),
          child: Image(
            image: AssetImage('assets/Images/Quiz_imoji.png'),
          ),
        ),
      ),
      body: (value < quiz.length)
          ? Padding(
        padding: const EdgeInsets.all(10),
        child: IndexedStack(
          index: value,
          children: quiz.map((e) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 40,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Quiz : ${e['no']}",
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                    ],
                  ),
                ),
                Text(
                  e['question'],
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 3,
                ),
                Container(
                  height: 320,
                  width: W,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {
                          setState(() {
                            ans = "A";

                          });
                        },
                        child: Container(
                          height: 65,
                          width: W,
                          decoration: BoxDecoration(
                            color: ans == "A"
                                ? const Color(0xffE6812F)
                                : const Color(0xffCCDDE7),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: ans == "A"
                                        ? const Color(0xffCCDDE7)
                                        : const Color(0xffE6812F),
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "A",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: ans == "A"
                                          ? const Color(0xffE6812F)
                                          : const Color(0xffCCDDE7),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Text(
                                  e['A'],
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: ans == "A"
                                        ? Colors.white
                                        : const Color(0xff242A40),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {
                          setState(() {
                            ans = "B";
                          });
                        },
                        child: Container(
                          height: 65,
                          width: W,
                          decoration: BoxDecoration(
                            color: ans == "B"
                                ? const Color(0xffE6812F)
                                : const Color(0xffCCDDE7),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: ans == "B"
                                        ? const Color(0xffCCDDE7)
                                        : const Color(0xffE6812F),
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "B",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: ans == "B"
                                          ? const Color(0xffE6812F)
                                          : const Color(0xffCCDDE7),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Text(
                                  e['B'],
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: ans == "B"
                                        ? Colors.white
                                        : const Color(0xff242A40),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {
                          setState(() {
                            ans = "C";
                          });
                        },
                        child: Container(
                          height: 65,
                          width: W,
                          decoration: BoxDecoration(
                            color: ans == "C"
                                ? const Color(0xffE6812F)
                                : const Color(0xffCCDDE7),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: ans == "C"
                                        ? const Color(0xffCCDDE7)
                                        : const Color(0xffE6812F),
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "C",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: ans == "C"
                                          ? const Color(0xffE6812F)
                                          : const Color(0xffCCDDE7),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Text(
                                  e['C'],
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: ans == "C"
                                        ? Colors.white
                                        : const Color(0xff242A40),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {
                          setState(() {
                            ans = "D";
                          });
                        },
                        child: Container(
                          height: 65,
                          width: W,
                          decoration: BoxDecoration(
                            color: ans == "D"
                                ? const Color(0xffE6812F)
                                : const Color(0xffCCDDE7),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: ans == "D"
                                        ? const Color(0xffCCDDE7)
                                        : const Color(0xffE6812F),
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "D",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: ans == "D"
                                          ? const Color(0xffE6812F)
                                          : const Color(0xffCCDDE7),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Text(
                                  e['D'],
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: ans == "D"
                                        ? Colors.white
                                        : const Color(0xff242A40),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    setState(() {
                      if (e['no'] == 9) {
                        nextpage = "Submit";
                      }
                      if (e['no'] == 10) {
                        nextText = "Submit";
                      }
                      if(e['ans'] == ans)
                      {
                        score++;
                        image = 'assets/Images/quiz/right.png';
                        ansText = "Your Answer is Correct";
                        price += 1000;
                        priceText = "You Won  ₹ 1000";
                      }
                      else{
                        image = 'assets/Images/quiz/wrong.png';
                        ansText = "Your Answer is Wrong";
                        priceText = "You Loss  ₹ 0";
                      }
                      ans = "";
                      value++;
                    });
                    Navigator.pushNamed(context, 'page2', arguments: [
                      image,
                      ansText,
                      priceText,
                      nextText
                    ]);
                  },
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xffE6812F),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      nextpage,
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      )
          : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Score : $score",
              style: const TextStyle(
                fontSize: 40,
                color: Color(0xffCCDDE7),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Winning Price : ₹ $price",
              style: const TextStyle(
                fontSize: 30,
                color: Color(0xffCCDDE7),
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: (){
                setState(() {
                  value = 0;
                  score = 0;
                  price = 0;
                  nextpage = "Next Quiz";
                  nextText = "Next";
                });
              },
              child: Container(
                height: 70,
                width: W / 2,
                decoration: BoxDecoration(
                  color: const Color(0xffE6812F),
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: const Text("Restart",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xff242A40),
    );
  }
}
