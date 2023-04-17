import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../utils/global_variable.dart';


class carrier_info_page extends StatefulWidget {
  const carrier_info_page({Key? key}) : super(key: key);

  @override
  State<carrier_info_page> createState() => _carrier_info_pageState();
}

class _carrier_info_pageState extends State<carrier_info_page> {
  int initiaLayer = 0;
  final GlobalKey<FormState> contactFormkey = GlobalKey<FormState>();
  final ImagePicker picker = ImagePicker();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController address1Controller = TextEditingController();
  final TextEditingController address2Controller = TextEditingController();
  final TextEditingController address3Controller = TextEditingController();

  String? name;
  String? email;
  String? phone;
  String? address1;
  String? address2;
  String? address3;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: GestureDetector(
                onTap: (){
                  setState(() {
                    nameController.clear();
                    emailController.clear();
                    phoneController.clear();
                    address1Controller.clear();
                    address2Controller.clear();
                    address3Controller.clear();

                    name = null;
                    email = null;
                    phone = null;
                    address1 = null;
                    address2 = null;
                    address3 = null;
                  });
                },
                child: const Icon(Icons.restart_alt)),
          ),
        ],
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios_new)),
        toolbarHeight: 80,
        centerTitle: true,
        elevation: 0,
        title: Column(
          children: const [
            Text(
              "Resume Workspace",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          initiaLayer = 0;
                        });
                      },
                      child: const Text(
                        "Contact",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      )),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        initiaLayer = 1;
                      });
                    },
                    child: const Text(
                      "Photo",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 20,
            child: Container(
              height: h * 0.8,
              width: w * 0.9,
              color: const Color(0xffEDEDED),
              child: IndexedStack(
                index: initiaLayer,
                children: [
                  //Contact layer
                  Container(
                    color: Colors.white,
                    height: 500,
                    width: 600,
                    child: Form(
                      key: contactFormkey,
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              // name
                              Row(
                                children: [
                                  const Icon(
                                    Icons.person,
                                    size: 30,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: TextFormField(
                                      controller: nameController,
                                      textInputAction: TextInputAction.next,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter Your Name";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        name = val;
                                      },
                                      decoration: const InputDecoration(
                                        hintText: "Name",
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              // email
                              Row(
                                children: [
                                  const Icon(
                                    Icons.email,
                                    size: 30,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: TextFormField(
                                      controller: emailController,
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.emailAddress,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter Your Email";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        email = val;
                                      },
                                      decoration: const InputDecoration(
                                        hintText: "Email",
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              //phone
                              Row(
                                children: [
                                  const Icon(
                                    Icons.phone_android_sharp,
                                    size: 30,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: TextFormField(
                                      controller: phoneController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter your phone no.";
                                        } else if (val!.length != 10) {
                                          return "Enter 10  Digit Phone no.";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        phone = val;
                                      },
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                        hintText: "Phone",
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              // address 1
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_pin,
                                    size: 30,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: TextFormField(
                                      controller: address1Controller,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter Your Address 1";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        address1 = val;
                                      },
                                      textInputAction: TextInputAction.next,
                                      decoration: const InputDecoration(
                                        hintText: "Address 1",
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              // address 2
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  Expanded(
                                    flex: 10,
                                    child: TextFormField(
                                      controller: address2Controller,
                                      onSaved: (val) {
                                        address2 = val;
                                      },
                                      textInputAction: TextInputAction.next,
                                      decoration: const InputDecoration(
                                        hintText: "Address 2",
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              // address 3
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  Expanded(
                                    flex: 10,
                                    child: TextFormField(
                                      controller: address3Controller,
                                      onSaved: (val) {
                                        address3 = val;
                                      },
                                      textInputAction: TextInputAction.done,
                                      onFieldSubmitted: (val) {
                                        if (contactFormkey.currentState!
                                            .validate()) {
                                          contactFormkey.currentState!.save();
                                        }
                                      },
                                      decoration: const InputDecoration(
                                        hintText: "Address 3",
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // const SizedBox(
                              //   height: 20,
                              // ),
                              // Row(
                              //   children: [
                              //     const SizedBox(width: 80,),
                              //     Container(
                              //       height: 100,
                              //       width: 100,
                              //       color: Colors.blue,
                              //
                              //       child: const Text(
                              //         "Save",
                              //         style: TextStyle(
                              //         fontSize: 15,
                              //         fontWeight: FontWeight.w500
                              //       ),
                              //       ),
                              //     ),
                              //   const SizedBox(width: 80,),
                              //     Container(
                              //       height: 100,
                              //       width: 100,
                              //       color: Colors.blue,
                              //
                              //       child: const Text(
                              //         "Reset",
                              //         style: TextStyle(
                              //         fontSize: 15,
                              //         fontWeight: FontWeight.w500
                              //       ),
                              //       ),
                              //     ),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //*Photo layer*
                  Container(
                    color: Colors.white,
                    height: 400,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          child: Text("ADD"),
                          backgroundColor: Colors.grey.shade200,
                        ),
                        FloatingActionButton(
                            mini: true,
                            child: Icon(Icons.add),
                            onPressed: () async {
                            XFile? xfile = await picker.pickImage(source: ImageSource.camera);
                            String imagepath = xfile!.path;

                            setState(() {
                              Globals.image = File(imagepath);
                            });
                            },
                         ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xffEDEDED),
    );
  }
}
