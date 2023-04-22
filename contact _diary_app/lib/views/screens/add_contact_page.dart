import 'dart:io';
import 'package:contactapp/modal/contact_detalies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../utils/Color.dart';

class add_contact_page extends StatefulWidget {
  const add_contact_page({Key? key}) : super(key: key);

  @override
  State<add_contact_page> createState() => _add_contact_pageState();
}

class _add_contact_pageState extends State<add_contact_page> {
  GlobalKey<FormState> Globalkey_contact = GlobalKey<FormState>();
  ImagePicker picker = ImagePicker();
  File? imgfile;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(CupertinoIcons.back),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              if (Globalkey_contact.currentState!.validate()) {
                Globalkey_contact.currentState!.save();
                Contact c1 = Contact(
                  firstname: first_name!,
                  lastname: last_name!,
                  phonenumber: phone_numbere!,
                  email: e_mail!,
                  imgfile: imgfile!,
                );
                Globals.all_contact.add(c1);
                await Navigator.of(context)
                    .pushNamedAndRemoveUntil('/', (route) => false);
                setState(() {});
              }
            },
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: 650,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade400,
                      radius: 50,
                      foregroundImage: (imgfile != null) ? FileImage(imgfile as File) : null,
                      foregroundColor: Colors.black,
                      child: Text("Add"),
                    ),
                    FloatingActionButton(
                      onPressed: () async {

                        XFile? xfile =
                            await picker.pickImage(source: ImageSource.camera);

                        String path = xfile!.path;
                        setState(() {
                          imgfile = File(path);
                        });
                      },
                      mini: true,
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Form(
                      key: Globalkey_contact,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // First name
                            const Text("First Name"),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              textInputAction: TextInputAction.next,
                              controller: first_name_controller,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter First Name";
                                }
                              },
                              onSaved: (val) {
                                first_name = val;
                              },
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "First Name"),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            // Last name
                            const Text("Last Name"),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              textInputAction: TextInputAction.next,
                              controller: last_name_controller,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter Last Name";
                                }
                              },
                              onSaved: (val) {
                                last_name = val;
                              },
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Last Name"),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            // Phone no
                            const Text("Phone Number"),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              controller: phone_number_controller,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter Phone no.";
                                } else if (val.length != 10) {
                                  return "Enter Minimum 10 Digit Number";
                                }
                              },
                              onSaved: (val) {
                                phone_numbere = val;
                              },
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Phone Number"),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            // E-mail
                            const Text("E-mail"),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              textInputAction: TextInputAction.done,
                              controller: e_mail_controller,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter E-mail Name";
                                }
                              },
                              onSaved: (val) {
                                e_mail = val;
                              },
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "E-Mail",
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
