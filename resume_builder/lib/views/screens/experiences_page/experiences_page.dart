import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/global_variable.dart';

class experiences_page extends StatefulWidget {
  const experiences_page({Key? key}) : super(key: key);

  @override
  State<experiences_page> createState() => _experiences_pageState();
}

class _experiences_pageState extends State<experiences_page> {
  TextEditingController date_joined_controller = TextEditingController();
  TextEditingController date_exited_controller = TextEditingController();
  TextEditingController company_name_controller = TextEditingController();
  TextEditingController school_college_institue_controller =
      TextEditingController();
  TextEditingController roles_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Experience"),
        toolbarHeight: 100,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(CupertinoIcons.back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Container(
            height: 680,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Text(
                          "Company Name",
                          style: TextStyle(
                            color: Colors.blue.shade500,
                          ),
                        )),
                    TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          "Enter company name";
                        }
                      },
                      onSaved: (val) {
                        val = Globals.company_name;
                      },
                      controller: company_name_controller,
                      decoration: InputDecoration(
                        hintText: "New Enterprise, San Francisco",
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        flex: 2,
                        child: Text(
                          "School/College/Institute",
                          style: TextStyle(
                            color: Colors.blue.shade500,
                          ),
                        )),
                    TextFormField(
                      validator: (val) {
                        if(val!.isEmpty){
                          "Enter your School/College/Institute ";
                        }
                      },
                      onSaved: (val) {
                        val = Globals.school_college_institue;
                      },
                      controller: school_college_institue_controller,
                      decoration: InputDecoration(
                        hintText: "Quality Test Engineer",
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                        border: const OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        flex: 2,
                        child: Text(
                          "Roles (Optional)",
                          style: TextStyle(
                            color: Colors.blue.shade500,
                          ),
                        )),
                    TextFormField(
                      validator: (val){
                        if(val!.isEmpty){
                          "Enter your role of company";
                        }
                      },
                      onSaved: (val){
                        val = Globals.roles;
                      },
                      maxLines: 5,
                      controller: roles_controller,
                      decoration: InputDecoration(
                        hintText:
                            "Working With Team members to come up with new concepts and product analysis",
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                        border: const OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        flex: 2,
                        child: Text(
                          "Empolyed Statuse",
                          style: TextStyle(
                              color: Colors.grey.shade500, fontSize: 12),
                        )),
                    Row(
                      children: [
                        Row(
                          children: [
                            Radio(
                                value: true,
                                groupValue: Globals.experience_page,
                                onChanged: (val) {
                                  setState(() {
                                    Globals.experience_page = val!;
                                  });
                                }),
                            const Text(
                              "Previously Employed",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Row(
                          children: [
                            Radio(
                                value: false,
                                groupValue: Globals.experience_page,
                                onChanged: (val) {
                                  setState(() {
                                    Globals.experience_page = val!;
                                  });
                                }),
                            Text(
                              "Currently Employed",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                    TextField(
                      enabled: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // joined

                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Text(
                                "Date Joined",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey.shade500),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextField(
                                controller: date_joined_controller,
                                decoration: InputDecoration(
                                  hintText: "DD/MM/YYYY",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          width: 60,
                        ),
                        // exited

                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Text(
                                "Date Exit",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey.shade500),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                controller: date_exited_controller,
                                decoration: const InputDecoration(
                                  hintText: "DD/MM/YYYY",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 40,
                        width: 150,
                        alignment: Alignment.center,
                        child: const Text(
                          "Save",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        decoration: BoxDecoration(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xffEDEDED),
    );
  }
}
