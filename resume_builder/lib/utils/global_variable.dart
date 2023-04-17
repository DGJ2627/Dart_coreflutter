import 'dart:io';
import 'package:flutter/material.dart';

class Globals{
  // carrier info
  static String? name;
  static String? email;
  static String? phone;
  static String? address1;
  static String? address2;
  static String? address3;
  static File? image;
  static File? imagepath;

  // carrier objective
  static String? c_b_var;
  static String? c_d_var;

  // declaration_page
  static String? d_d;
  static String? m_m;
  static String? y_y;
  static String? c_tiy;

  //education_page
  static String? course_degree;
  static String? school;
  static String? college;
  static String? yeraofpass;

  //experiences_page
  static bool experience_page = true;
  static String? date_joined;
  static String? date_exited;
  static String? company_name;
  static String? school_college_institue;
  static String? roles;

  // personal_details_page
  static String maritial_status = "ABCD";
  static String? country;
  static bool  isenglish = false;
  static bool  ishindi = false;
  static bool  isgujarati = false;
  static String? date_personal_d_page;

  // project_page
  static String? project_title;
  static String? roles_project_page;
  static String? technologies;
  static String? project_des;


  static List<String> technical =[];

  static bool declaration = false;
  static bool swith_val = false;
  static int? date_declaration_page;
  static bool  isc = false;
  static bool  iscplus = false;
  static bool  isflutter = false;

  // achievement_page
  static List<String> achievements =[];
}

