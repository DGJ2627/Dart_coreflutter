import 'package:flutter/material.dart';
import '../../../utils/global_variable.dart';
class achievements_page extends StatefulWidget {
  const achievements_page({Key? key}) : super(key: key);

  @override
  State<achievements_page> createState() => _achievements_pageState();
}

class _achievements_pageState extends State<achievements_page> {
  List<TextEditingController> allTextfield = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allTextfield.add(TextEditingController());
    allTextfield.add(TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Technical Skills"),
        toolbarHeight: 100,
        leading: GestureDetector(
          onTap: () {

            setState(() {
              allTextfield.forEach((e) {
                Globals.achievements.add(e.text);
              });
            });
                Navigator.of(context).pop();


          },
          child: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Enter your Skills",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // add Textfield
                  ...allTextfield
                      .map((e) => Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Exceeded Sales 17% average",
                              hintStyle: TextStyle(
                                color: Colors.grey.shade500,
                              )),
                        ),
                      ),
                      Expanded(
                          flex: 1, child: IconButton(onPressed: (){
                        setState(() {
                          allTextfield.remove(e);
                        });
                      }, icon: Icon(Icons.delete_outline_outlined))),
                    ],
                  ))
                      .toList(),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          allTextfield.add(TextEditingController());
                        });
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xffEDEDED),
    );
  }
}
