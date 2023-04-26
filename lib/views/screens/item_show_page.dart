import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_app/views/screens/item_details_page.dart';

import '../../models/globals.dart';

class item_show_page extends StatefulWidget {
  const item_show_page({Key? key}) : super(key: key);

  @override
  State<item_show_page> createState() => _item_show_pageState();
}

class _item_show_pageState extends State<item_show_page> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Invoice Generator",
          style: GoogleFonts.aclonica(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      body: (Global.count_item.isNotEmpty)
          ? ListView.builder(
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    height: h * 0.2,
                    width: w,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${Global.count_item[i].ITEM_NAME}",
                            style: GoogleFonts.castoro(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("${Global.count_item[i].ITEM_QUANTITY}"),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("${Global.count_item[i].ITEM_QUANTITY}"),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: Global.count_item.length,
            )
          : Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: h * 0.05,
                  width: w,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(),
                    ),
                  ),
                  child: Text(
                    "Item Details",
                    style: GoogleFonts.inriaSerif(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('item_details_page');
        },
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.white,
    );
  }
}
