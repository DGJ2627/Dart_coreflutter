import 'package:flutter/material.dart';

class build_option extends StatefulWidget {
  const build_option({Key? key}) : super(key: key);

  @override
  State<build_option> createState() => _build_optionState();
}

class _build_optionState extends State<build_option> {
  List<Map<String,dynamic>> allBuildeoption = [
    {
      "image" : "assets/images/contact-books.png",
      "title" : "Contact Info",
      "route" : "carrier_info_page"
    },
    {
      "image" : "assets/images/briefcase.png",
      "title" : "Carrier Objective",
      "route" : "carrier_objective_page"
    },
    {
      "image" : "assets/images/user.png",
      "title" : "Personal Details",
      "route" : "personal_details_page"
    },
    {
      "image" : "assets/images/mortarboard.png",
      "title" : "Eduction",
      "route" : "eduction_page"
    },
    {
      "image" : "assets/images/thinking.png",
      "title" : "Experiences",
      "route" : "experiences_page"
    },
    {
      "image" : "assets/images/declaration.png",
      "title" : "Technical Skills",
      "route" : "technical_skills_page"
    },
    {
      "image" : "assets/images/open-book.png",
      "title" : "Interest/Hobbies",
      "route" : "interest_hobbies_page"
    },
    {
      "image" : "assets/images/project.png",
      "title" : "Projects",
      "route" : "projects_page"
    },
    {
      "image" : "assets/images/achievement.png",
      "title" : "Achievements",
      "route" : "achievements_page"
    },
    {
      "image" : "assets/images/handshake.png",
      "title" : "References",
      "route" : "references_page"
    },
    {
      "image" : "assets/images/experience.png",
      "title" : "Declaration",
      "route" : "declaration_page"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios_new)),
        title: const Text("Resume Workspace"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.blue),
              alignment: Alignment.center,
              child: const Text(
                "Build Options",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: allBuildeoption.map((e) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(e['image'],width: 40,),
                            const SizedBox(width: 25,),
                            Text(e['title'],style: TextStyle(fontSize: 20),),
                            const Spacer(),
                            IconButton(onPressed: (){
                              Navigator.of(context).pushNamed(e['route']);
                            }, icon: const Icon(Icons.arrow_forward_ios),),
                          ],
                        ),
                        const Divider(height: 25),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
