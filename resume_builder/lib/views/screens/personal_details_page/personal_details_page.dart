import 'package:flutter/material.dart';

import '../../../utils/global_variable.dart';

class personal_details_page extends StatefulWidget {
  const personal_details_page({Key? key}) : super(key: key);

  @override
  State<personal_details_page> createState() => _personal_details_pageState();
}

class _personal_details_pageState extends State<personal_details_page> {
  dynamic fontstyle =
      const TextStyle(color: Colors.blue, fontSize: 26, fontWeight: FontWeight.w500);
  final TextEditingController date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                setState(() {
                  date.clear();
                });
              },
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Icon(Icons.restart_alt),
              )),
        ],
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back_ios_new),
        ),
        centerTitle: true,
        title: const Text(
          "Personal Details",
          style: TextStyle(fontSize: 20),
        ),
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Container(
            height: 600,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "DOB",
                      style: fontstyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (val){
                        if(val!.isEmpty){
                          "Enter your DOB";
                        }
                      },
                      onSaved: (val){
                        val = Globals.date_personal_d_page;
                      },
                      controller: date,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "DD/MM/YYYY",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Marital Status",
                      style: fontstyle,
                    ),
                    // single radio btn
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio(
                          value: "Single",
                          groupValue: Globals.maritial_status,
                          onChanged: (val) {
                            setState(() {
                              Globals.maritial_status = val!;
                            });
                          },
                        ),
                        Text(
                          "Single",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade500),
                        ),
                      ],
                    ),

                    // married radio btn
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio(
                          value: "Married",
                          groupValue: Globals.maritial_status,
                          onChanged: (val) {
                            setState(() {
                              Globals.maritial_status = val!;
                            });
                          },
                        ),
                        Text(
                          "Married",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                    Text(
                      "Language Known",
                      style: fontstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            value: Globals.isenglish,
                            onChanged: (val) {
                              setState(() {
                                Globals.isenglish = val!;
                              });
                            }),
                        Text(
                          "English",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            value: Globals.ishindi,
                            onChanged: (val) {
                              setState(() {
                                Globals.ishindi = val!;
                              });
                            }),
                        Text(
                          "Hindi",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            value: Globals.isgujarati,
                            onChanged: (val) {
                              setState(() {
                                Globals.isgujarati = val!;
                              });
                            }),
                        Text(
                          "Gujarati",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Country",
                      style: fontstyle,
                    ),
                    DropdownButton<String?>(
                      hint: Text("Choose your Country",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),),
                        value: Globals.country,
                        items: const [
                          DropdownMenuItem(
                            child: Text("India"),
                            value: "IN",
                          ),
                          DropdownMenuItem(
                            child: Text("Russia"),
                            value: "Rus",
                          ),
                          DropdownMenuItem(
                            child: Text("USA"),
                            value: "USA",
                          ),
                        ],
                        onChanged: (val){
                          setState(() {
                            Globals.country = val!;
                          });
                        }),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xffEDEDED),
    );
  }
}
