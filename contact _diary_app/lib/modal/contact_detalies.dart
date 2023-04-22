import 'dart:io';
import 'package:flutter/material.dart';
TextEditingController first_name_controller = TextEditingController();
TextEditingController last_name_controller = TextEditingController();
TextEditingController phone_number_controller = TextEditingController();
TextEditingController e_mail_controller = TextEditingController();

String? first_name;
String? last_name;
String? phone_numbere;
String? e_mail;
File? imgfile;
class Globals{
  static List<Contact> all_contact = [];
}


class Contact{
     String firstname;
     String lastname;
     String phonenumber;
     String email;
     File? imgfile;
    Contact({
      required this.firstname,
      required this.lastname,
      required this.phonenumber,
      required this.email,
      this.imgfile,
   });
}