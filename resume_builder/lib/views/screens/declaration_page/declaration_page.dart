import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/global_variable.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
import 'package:resume_builder_app/views/screens/pdf/pdf_page.dart';
import '../../../utils/global_variable.dart';

class declaration_page extends StatefulWidget {
  const declaration_page({Key? key}) : super(key: key);

  @override
  State<declaration_page> createState() => _declaration_pageState();
}

class _declaration_pageState extends State<declaration_page> {
  TextEditingController dd = TextEditingController();
  TextEditingController mm = TextEditingController();
  TextEditingController yyyyy = TextEditingController();
  TextEditingController city = TextEditingController();



  final TextEditingController desc_1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Declaration",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        toolbarHeight: 100,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: GestureDetector(
                onTap: () {
                  dd.clear();
                  mm.clear();
                  yyyyy.clear();
                  city.clear();

                  Globals.d_d = null;
                  Globals.m_m = null;
                  Globals.y_y = null;
                  Globals.c_tiy = null;
                },
                child: const Icon(Icons.restart_alt)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                    child: Text(
                      "Declaration",
                      style: TextStyle(color: Colors.blue, fontSize: 24),
                    ),
                  ),
                  Switch(
                      value: Globals.swith_val,
                      onChanged: (val) {
                        setState(() {
                          Globals.swith_val = val;
                        });
                      }),
                ],
              ),
            ),
            (Globals.swith_val)
                ? Container(
                    height: 450,
                    width: double.infinity,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Container(
                                width: 100,
                                height: 100,
                                child: Image.network(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0NflOXNjl0X743863Q4c7beA36tkVHuLfzxv4NKc8cdHY-oIx5zbClOLlaSpLfYZ11hg&usqp=CAU")),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(24),
                            child: TextField(
                              controller: desc_1,
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                hintText: "Description",
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade500),
                                ),
                              ),
                            ),
                          ),
                          TextField(
                            enabled: false,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(24),
                                      child: Text(
                                        "Date",
                                        style: TextStyle(
                                            color: Colors.grey.shade500,
                                            fontSize: 18),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(24),
                                      child: Container(
                                        height: 40,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey)),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: TextField(
                                                controller: dd,
                                                decoration: InputDecoration(
                                                  hintText: "DD/",
                                                ),
                                                onChanged: (val) {
                                                  Globals.d_d = val;
                                                },
                                              ),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: TextField(
                                                controller: mm,
                                                decoration: InputDecoration(
                                                  hintText: "MM",
                                                ),
                                                onChanged: (val) {
                                                  Globals.m_m = val;
                                                },
                                              ),
                                            ),
                                            Expanded(
                                              flex: 4,
                                              child: TextField(
                                                controller: yyyyy,
                                                decoration:
                                                    const InputDecoration(
                                                  hintText: "/YYYY",
                                                ),
                                                onChanged: (val) {
                                                  Globals.y_y = val;
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(24),
                                      child: Text(
                                        "Place(Interview/City)",
                                        style: TextStyle(
                                            color: Colors.grey.shade500,
                                            fontSize: 18),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(24),
                                      child: Container(
                                        height: 40,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                        ),
                                        child: TextField(
                                          controller: city,
                                          decoration: const InputDecoration(
                                              hintText: "City"),
                                          onChanged: (val) {
                                            Globals.c_tiy = val;
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 30,
                                width: 100,
                                color: Colors.blue,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed("pdf_page");
                                  },
                                  child: const Text("Save",style: TextStyle(color: Colors.white),),
                                ),
                              )),
                        ],
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
      backgroundColor: const Color(0xffEDEDED),
    );
  }
}
