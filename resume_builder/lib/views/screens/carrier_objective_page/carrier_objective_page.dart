import 'package:flutter/material.dart';

import '../../../utils/global_variable.dart';

class carrier_objective_page extends StatefulWidget {
  const carrier_objective_page({Key? key}) : super(key: key);

  @override
  State<carrier_objective_page> createState() => _carrier_objective_pageState();
}

class _carrier_objective_pageState extends State<carrier_objective_page> {
  final TextEditingController c_b = TextEditingController();
  final TextEditingController c_d = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                setState(() {
                  c_b.clear();
                  c_d.clear();
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(16),
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
          "Carrier objective",
          style: TextStyle(fontSize: 20),
        ),
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            height: 500,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(24),
                  child: Text(
                    "Carrier Objective",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: TextFormField(
                    validator: (val){
                      if(val!.isEmpty){
                        "Enter Description";
                      }
                    },
                    onSaved: (val){
                      val = Globals.c_b_var;
                    },
                    controller: c_b,
                    maxLines: 6,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Description",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Padding(
                  padding: EdgeInsets.all(24),
                  child: Text(
                    "Current Designation (Experienced \n Candidate)",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: TextFormField(
                    validator: (val){
                      if(val!.isEmpty){
                        "Enter software Engineer";
                      }
                      return null;
                    },
                    onSaved: (val){
                      val =  Globals.c_d_var;
                    },
                    controller: c_d,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: "Software Engineer",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xffEDEDED),
    );
  }
}
