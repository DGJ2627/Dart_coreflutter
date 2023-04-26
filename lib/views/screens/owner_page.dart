import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice_app/models/globals.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_app/views/screens/customer_page.dart';

import '../../models/globals.dart';

class owner_page extends StatefulWidget {
  const owner_page({Key? key}) : super(key: key);

  @override
  State<owner_page> createState() => _owner_pageState();
}

class _owner_pageState extends State<owner_page> {
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
        toolbarHeight: 50,
        actions: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextButton(
              onPressed: () {
                business_name_controller.clear();
                owner_name_controller.clear();
                owner_GST_IN_controller.clear();
                business_location_controller.clear();
                owner_date_controller.clear();
                owner_street_controller.clear();
                owner_city_controller.clear();
                owner_state_controller.clear();
                owner_zip_controller.clear();
                owner_country_controller.clear();

                business_name = null;
                owner_name = null;
                owner_GST_IN = null;
                business_location = null;
                owner_date = null;
                owner_street = null;
                owner_city = null;
                owner_state = null;
                owner_zip = null;
                owner_country = null;
              },
              child: Text(
                "Clear",
                style: GoogleFonts.inriaSerif(
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
                height: h * 0.99,
                width: w,
                color: Colors.white,
                child: Form(
                  key: owner_side_key,
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
                          "Business Details",
                          style: GoogleFonts.inriaSerif(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //business name
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Business Name",
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
                                    business_name = val;
                                  },
                                  textInputAction: TextInputAction.next,
                                  controller: business_name_controller,
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: "Business Name",
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
                                "Your Name",
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
                                    owner_name = val;
                                  },
                                  textInputAction: TextInputAction.next,
                                  controller: owner_name_controller,
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: "Your Name",
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

                      // gst
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
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
                                width: w * 0.5,
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter your GST Number";
                                    } else if (val != 15) {
                                      return "Enter GST Number";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    owner_GST_IN = val;
                                  },
                                  textInputAction: TextInputAction.next,
                                  controller: owner_GST_IN_controller,
                                  decoration: InputDecoration(
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Business Location",
                                style: GoogleFonts.inriaSerif(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: w * 0.3,
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter Location";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    business_location = val;
                                  },
                                  textInputAction: TextInputAction.next,
                                  controller: business_location_controller,
                                  decoration: InputDecoration(
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
                        ],
                      ),

                      //date
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Date",
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
                                      return "Enter Date";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    owner_date = val;
                                  },
                                  textInputAction: TextInputAction.next,
                                  controller: owner_date_controller,
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: "Date",
                                    hintStyle: GoogleFonts.inriaSerif(
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // street
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: SizedBox(
                          child: Column(
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
                                width: w * 0.5,
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Missing";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    owner_street = val;
                                  },
                                  textInputAction: TextInputAction.next,
                                  controller: owner_street_controller,
                                  decoration: InputDecoration(
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
                        ),
                      ),

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
                                  decoration: InputDecoration(
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
                                    owner_state = val;
                                  },
                                  textInputAction: TextInputAction.next,
                                  controller: owner_name_controller,
                                  decoration: InputDecoration(
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
                      const SizedBox(
                        height: 10,
                      ),
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
                                  decoration: InputDecoration(
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
                                    owner_country = val;
                                  },
                                  onFieldSubmitted: (val) {
                                    if (owner_side_key.currentState!
                                        .validate()) {
                                      owner_side_key.currentState!.save();
                                    }
                                  },
                                  textInputAction: TextInputAction.done,
                                  controller: owner_country_controller,
                                  decoration: InputDecoration(
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
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('customer_page');
                        },
                        // child: GestureDetector(
                        //   onTap: () async{
                        //     if(owner_side_key.currentState!.validate()){
                        //       owner_side_key.currentState!.save();
                        //       owner_data_list b1 = (owner_data_list
                        //         (BUSINESS_NAME: business_name!,
                        //         OWNER_NAME: owner_name!,
                        //         OWNER_GST_IN: owner_GST_IN!,
                        //         BUSINESS_LOCATION: business_location!,
                        //         OWNER_DATE: owner_date!,
                        //         OWNER_STREET: owner_street!,
                        //         OWNER_CITY: owner_city!,
                        //         OWNER_STATE: owner_state!,
                        //         OWNER_ZIP: owner_zip!,
                        //         OWNER_COUNTRY: owner_country!,);
                        //     };
                        //       await Navigator.of(context).pushNamed('customer_page');
                        //   },
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
              //done btn
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
