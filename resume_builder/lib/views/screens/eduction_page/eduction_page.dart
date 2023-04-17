import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/global_variable.dart';

class eduction_page extends StatefulWidget {
  const eduction_page({Key? key}) : super(key: key);

  @override
  State<eduction_page> createState() => _eduction_pageState();
}

class _eduction_pageState extends State<eduction_page> {
  final TextEditingController course_degree_controller = TextEditingController();
  final TextEditingController school_controller = TextEditingController();
  final TextEditingController college_controller = TextEditingController();
  final TextEditingController pass_year_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Eduction",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        toolbarHeight: 100,
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    course_degree_controller.clear();
                    school_controller.clear();
                    college_controller.clear();
                    pass_year_controller.clear();

                    Globals.course_degree = null;
                    Globals.school = null;
                    Globals.college = null;
                    Globals.yeraofpass = null;
                  });
                },
                child: Icon(Icons.restart_alt)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          width: double.infinity,
          height: 600,
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // course/degree
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Course/Degree",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        "Enter Degree Name";
                      }
                    },
                    onSaved: (val) {
                      val = Globals.course_degree;
                    },
                    controller: course_degree_controller,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "B.Tech information Technology",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                ),
                //school/college/1
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "School/College/Institute",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextFormField(
                    validator: (val) {
                      if(val!.isEmpty){
                        "Enter your school or college Name";
                      }
                    },
                    onSaved: (val) {
                      val = Globals.school;
                    },
                    controller: school_controller,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Bhagwan Mahavir University",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                ),
                //school/college/2
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "School/College/Institute",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextFormField(
                    validator: (val){
                      if(val!.isEmpty){
                        "Enter your percentages";
                      }
                    },
                    onSaved: (val){val=Globals.college;},
                    controller: college_controller,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: "70% () or 7.0 CGPA",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                ),
                //year pf pass
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Year of Pass",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextFormField(
                    validator: (val){
                      if(val!.isEmpty){
                        "Enter your last passing year";
                      }
                    },
                    onSaved: (val){
                      val = Globals.yeraofpass;
                    },
                    controller: pass_year_controller,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: "2019",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade500,
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
