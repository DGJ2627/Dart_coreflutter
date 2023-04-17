import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/views/screens/Build%20option.dart';
import 'package:resume_builder_app/views/screens/Home_page.dart';
import 'package:resume_builder_app/views/screens/achievements_page/achievements_page.dart';
import 'package:resume_builder_app/views/screens/carrier_info_page/carrier_info_page.dart';
import 'package:resume_builder_app/views/screens/carrier_objective_page/carrier_objective_page.dart';
import 'package:resume_builder_app/views/screens/declaration_page/declaration_page.dart';
import 'package:resume_builder_app/views/screens/eduction_page/eduction_page.dart';
import 'package:resume_builder_app/views/screens/experiences_page/experiences_page.dart';
import 'package:resume_builder_app/views/screens/interest_hobbies_page/interest_hobbies_page.dart';
import 'package:resume_builder_app/views/screens/pdf/pdf_page.dart';
import 'package:resume_builder_app/views/screens/personal_details_page/personal_details_page.dart';
import 'package:resume_builder_app/views/screens/projects_page/projects_page.dart';
import 'package:resume_builder_app/views/screens/references_page/references_page.dart';
import 'package:resume_builder_app/views/screens/technical_skills_page/technical_skills_page.dart';
import '../../../utils/global_variable.dart';

class pdf_page extends StatefulWidget {
  const pdf_page({Key? key}) : super(key: key);

  @override
  State<pdf_page> createState() => _pdf_pageState();
}

class _pdf_pageState extends State<pdf_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Printing Pdf"),
        toolbarHeight: 100,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(CupertinoIcons.back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Container(
          height: 500,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                      ),
                      Text(
                        "${Globals.name}",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(flex: 2, child: Text("")),
              Expanded(flex: 2, child: Text("")),
              Expanded(flex: 2, child: Text("")),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xffEDEDED),
    );
  }
}
