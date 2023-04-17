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

void main (){
  runApp(const Gautam());
}

class Gautam extends StatelessWidget {
  const Gautam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => const Home_page(),
        'build_option':(context) => const build_option(),
        'carrier_info_page':(context) => const carrier_info_page(),
        'carrier_objective_page':(context) => const carrier_objective_page(),
        'personal_details_page':(context) => const personal_details_page(),
        'eduction_page':(context) => const eduction_page(),
        'experiences_page':(context) => const experiences_page(),
        'technical_skills_page':(context) => const technical_skills_page(),
        'interest_hobbies_page':(context) => const interest_hobbies_page(),
        'projects_page':(context) => const projects_page(),
        'achievements_page':(context) => const achievements_page(),
        'references_page':(context) => const references_page(),
        'declaration_page':(context) => const declaration_page(),
        'pdf_page':(context) => const pdf_page(),
      },
    );
  }
}
