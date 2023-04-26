import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/globals.dart';

class customer_page extends StatefulWidget {
  const customer_page({Key? key}) : super(key: key);

  @override
  State<customer_page> createState() => _customer_pageState();
}

class _customer_pageState extends State<customer_page> {
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
          icon: const Icon(CupertinoIcons.back,color: Colors.black,),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextButton(
              onPressed: () {
                customer_name_controller.clear();
                customer_GST_IN_controller.clear();
                supply_location_controller.clear();
                customer_street_controller.clear();
                customer_city_controller.clear();
                customer_state_controller.clear();
                customer_zip_controller.clear();
                customer_country_controller.clear();

                customer_name = null;
                customer_GST_IN = null;
                supply_location = null;
                customer_street = null;
                customer_city = null;
                customer_state = null;
                customer_zip = null;
                customer_country = null;
              },
              child: Text(
                "Clear",
                style: GoogleFonts.inriaSerif(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: h * 1.05,
                width: w,
                color: Colors.white,
                child: Form(
                  key: customer_side_key,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                          "Customer Details",
                          style: GoogleFonts.inriaSerif(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //customer name
                      const SizedBox(width: 8,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Customer Name",
                            style: GoogleFonts.inriaSerif(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: w * 0.6,
                            child: TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter Name";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                customer_name = val;
                              },
                              textInputAction: TextInputAction.next,
                              controller: customer_name_controller,
                              decoration:  InputDecoration(
                                border: const OutlineInputBorder(),
                                hintText: "Name",
                                hintStyle: GoogleFonts.inriaSerif(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // gst
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "GSTIN",
                            style: GoogleFonts.inriaSerif(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: w * 0.6,
                            child: TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your GST Number";
                                }
                                else if(val != 15){
                                  return "Enter GST Number";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                customer_GST_IN = val;
                              },
                              textInputAction: TextInputAction.next,
                              controller: customer_GST_IN_controller,
                              decoration:  InputDecoration(
                                border: const OutlineInputBorder(),
                                hintText: "GSTIN",
                                hintStyle: GoogleFonts.inriaSerif(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      // place of supply
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Place of Supply",
                            style: GoogleFonts.inriaSerif(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: w * 0.6,
                            child: TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter Location";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                supply_location = val;
                              },
                              textInputAction: TextInputAction.next,
                              controller: supply_location_controller,
                              decoration:  InputDecoration(
                                border: const OutlineInputBorder(),
                                hintText: "Business Location",
                                hintStyle: GoogleFonts.inriaSerif(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // street
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Street",
                            style: GoogleFonts.inriaSerif(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: w * 0.6,
                            child: TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Missing";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                customer_street = val;
                              },
                              textInputAction: TextInputAction.next,
                              controller: customer_street_controller,
                              decoration:  InputDecoration(
                                border: const OutlineInputBorder(),
                                hintText: "Street",
                                hintStyle: GoogleFonts.inriaSerif(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      //city
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "City",
                                style: GoogleFonts.inriaSerif(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: w * 0.4,
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter City";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    owner_city = val;
                                  },
                                  textInputAction: TextInputAction.next,
                                  controller: owner_city_controller,
                                  decoration:  InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: "City",
                                    hintStyle: GoogleFonts.inriaSerif(
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "State",
                                style: GoogleFonts.inriaSerif(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: w * 0.4,
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter State";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    customer_state = val;
                                  },
                                  textInputAction: TextInputAction.next,
                                  controller: customer_name_controller,
                                  decoration:  InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: "State",
                                    hintStyle: GoogleFonts.inriaSerif(
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      //zip code
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ZIP/Postal Code",
                                style: GoogleFonts.inriaSerif(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: w * 0.4,
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter Zip Code";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    owner_zip = val;
                                  },
                                  textInputAction: TextInputAction.next,
                                  controller: owner_zip_controller,
                                  decoration:  InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: "ZIP/Postal Code",
                                    hintStyle: GoogleFonts.inriaSerif(
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Country",
                                style: GoogleFonts.inriaSerif(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: w * 0.4,
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter Name";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    customer_country = val;
                                  },
                                  onFieldSubmitted: (val){
                                    if(owner_side_key.currentState!.validate()){
                                      owner_side_key.currentState!.save();
                                    }
                                  },
                                  textInputAction: TextInputAction.done,
                                  controller: customer_country_controller,
                                  decoration:  InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: "Country",
                                    hintStyle: GoogleFonts.inriaSerif(
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      //done btn
                      GestureDetector(
                        onTap: () {
                         Navigator.of(context).pushNamed('item_show_page');
                        },
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                // Done btn
                                Container(
                                  alignment: Alignment.center,
                                  height: h * 0.05,
                                  width: w * 0.6,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blue.shade800),
                                  child: Text(
                                    "Done",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
