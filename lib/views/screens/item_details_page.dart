import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_app/models/globals.dart';

class item_details_page extends StatefulWidget {
  const item_details_page({Key? key}) : super(key: key);

  @override
  State<item_details_page> createState() => _item_details_pageState();
}

class _item_details_pageState extends State<item_details_page> {
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
      body: Column(
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
              "Add Item Details",
              style: GoogleFonts.inriaSerif(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: add_item_key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Item Name",
                    style: GoogleFonts.castoro(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold),
                  ),
                  // item name
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (val) {
                      if(val!.isEmpty){
                        return "Enter Item name";
                      }
                      return null;
                    },
                    onSaved: (val) {
                      item_name = val;
                    },
                    textInputAction: TextInputAction.next,
                    controller: item_name_controller,
                    decoration: InputDecoration(
                      hintMaxLines: 5,
                      border: const OutlineInputBorder(),
                      hintText: "What are you selling",
                      hintStyle: GoogleFonts.inriaSerif(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold),
                    ),
                    maxLines: 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  // dec
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Add Description",
                    style: GoogleFonts.castoro(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (val) {
                      if(val!.isEmpty){
                        return "Enter Description";
                      }
                      return null;
                    },
                    onSaved: (val) {
                      item_dec = val;
                    },
                    controller: item_dec_controller,
                    decoration: InputDecoration(
                      hintMaxLines: 5,
                      border: const OutlineInputBorder(),
                      hintText: "Add any Description",
                      hintStyle: GoogleFonts.inriaSerif(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // price
                  SizedBox(
                    width: w * 0.99,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Price",
                                style: GoogleFonts.castoro(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextFormField(
                                validator: (val){
                                  if(val!.isEmpty){
                                    return "Enter Rs.";
                                  }
                                  return null;
                                },
                                onSaved: (val){
                                  item_price = int.parse(val!);
                                },
                                controller: item_price_controller,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintText: "Rs.",
                                  hintStyle: GoogleFonts.inriaSerif(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Quantity",
                                style: GoogleFonts.castoro(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold),
                              ),
                              // quantity
                              Container(
                                height: h * 0.07,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          item_quantiy--;
                                        });
                                      },
                                      child: const Text(
                                        "-",
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.black),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text("${item_quantiy}"),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          item_quantiy++;
                                        });
                                      },
                                      child: const Text(
                                        "+",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //IGST
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "IGST",
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
                                  return "Enter IGST";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                item_GST = int.parse(val!);
                              },
                              textInputAction: TextInputAction.next,
                              controller: item_GST_controller,
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                hintText: "TAX%",
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
                            "Cess",
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
                                  return "Enter Cess";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                item_cess = int.parse(val!);
                              },
                              textInputAction: TextInputAction.next,
                              controller: item_cess_controller,
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                hintText: "TAX%",
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
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () async{
                      if (add_item_key.currentState!.validate()) {
                        add_item_key.currentState!.save();
                        show_item_details C_T_1 = show_item_details(
                            ITEM_NAME: item_name!,
                            ADD_DES: item_dec!,
                            ITEM_PRICE: item_price!,
                            ITEM_QUANTITY: item_quantiy!,
                            ITEM_GST: item_GST!,
                            ITEM_CESS: item_cess!);
                            Global.count_item.add(C_T_1);
                        await Navigator.of(context).pushNamedAndRemoveUntil('item_show_page', (route) => false);
                      }
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
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
