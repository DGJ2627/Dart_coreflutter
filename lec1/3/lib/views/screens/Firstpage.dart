import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white70,
        title: Text("Icons",
                style: TextStyle(
                  color: Colors.black,
                ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.add,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.album,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.alarm,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.admin_panel_settings,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.account_circle_outlined,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.wifi_protected_setup_rounded,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.zoom_out_map,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.wifi_tethering,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.more,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.more_vert,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.archive,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.accessibility_rounded,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.adb_rounded,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.call,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.search,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.account_balance_outlined,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.stop,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.play_arrow,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.apps,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.architecture_sharp,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.wifi_lock,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.account_box,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.add_location_alt_sharp,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.ac_unit,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.add_to_drive,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.airline_seat_recline_extra,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.accessibility_new_rounded,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 140,
                    width: 140,
                    child: const Icon(
                      Icons.add_business_sharp,
                      size: 50,
                      color: Color(0xff616161),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffE1E1E1),
                          offset: Offset(0, 10),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
