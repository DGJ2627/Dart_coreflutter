import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/global_variable.dart';

class projects_page extends StatefulWidget {
  const projects_page({Key? key}) : super(key: key);

  @override
  State<projects_page> createState() => _projects_pageState();
}

class _projects_pageState extends State<projects_page> {
  final TextEditingController project_title_controller = TextEditingController();
  final TextEditingController roles_project_page_controller = TextEditingController();
  final TextEditingController technologies_controller = TextEditingController();
  final TextEditingController project_des_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Projects"),
        centerTitle: true,
        toolbarHeight: 100,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(CupertinoIcons.back)),
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: const Icon(CupertinoIcons.restart),
            ),
            onTap: () {
              setState(() {
                project_title_controller.clear();
                roles_project_page_controller.clear();
                technologies_controller.clear();
                project_des_controller.clear();
              });
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: 700,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Project title
                  const Text(
                    "Project Title",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: project_title_controller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Resume Builder APP",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 18)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Technologies",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: Globals.isc,
                          onChanged: (val) {
                            setState(() {
                              Globals.isc = val!;
                            });
                          }),
                      const Text(
                        "C",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // c++
                  Row(
                    children: [
                      Checkbox(
                          value: Globals.iscplus,
                          onChanged: (val) {
                            setState(() {
                              Globals.iscplus = val!;
                            });
                          }),
                      const Text(
                        "C++",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //flutter
                  Row(
                    children: [
                      Checkbox(
                          value: Globals.isflutter,
                          onChanged: (val) {
                            setState(() {
                              Globals.isflutter = val!;
                            });
                          }),
                      const Text(
                        "Flutter",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Roles
                  const Text(
                    "Roles",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: roles_project_page_controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Organize team members, Code Analysis",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //Technologies
                  const Text(
                    "Technologies",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: technologies_controller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "5 - Programmers",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 18)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // project des
                  const Text(
                    "Projects Description",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: project_des_controller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Your Project Description",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 18)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 100,
                      color: Colors.blue,
                      child: const Text(
                        "Save",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
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
