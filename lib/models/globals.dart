import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// class Globals{
// static List <owner_data_list> Business_details_list = [];
// }
// class Global{
//   static List <customer_data_list> customer_details_list = [];
// }
class Global{
  static List <show_item_details> count_item= [];
}


class owner_data_list {
  String BUSINESS_NAME;
  String OWNER_NAME;
  String OWNER_GST_IN;
  String BUSINESS_LOCATION;
  String OWNER_DATE;
  String OWNER_STREET;
  String OWNER_CITY;
  String OWNER_STATE;
  String OWNER_ZIP;
  String OWNER_COUNTRY;
  owner_data_list ({
    required this.BUSINESS_NAME,
    required this.OWNER_NAME,
    required this.OWNER_GST_IN,
    required this.BUSINESS_LOCATION,
    required this.OWNER_DATE,
    required this.OWNER_STREET,
    required this.OWNER_CITY,
    required this.OWNER_STATE,
    required this.OWNER_ZIP,
    required this.OWNER_COUNTRY,
 });
}

class customer_data_list {

  String CUSTOMER_NAME;
  String CUSTOMER_GST_IN;
  String CUSTOMER_LOCATION;
  String CUSTOMER_STREET;
  String CUSTOMER_CITY;
  String CUSTOMER_STATE;
  String CUSTOMER_ZIP;
  String CUSTOMER_COUNTRY;
  customer_data_list ({

    required this.CUSTOMER_NAME,
    required this.CUSTOMER_GST_IN,
    required this.CUSTOMER_LOCATION,
    required this.CUSTOMER_STREET,
    required this.CUSTOMER_CITY,
    required this.CUSTOMER_STATE,
    required this.CUSTOMER_ZIP,
    required this.CUSTOMER_COUNTRY,
  });
}

class show_item_details{
  String ITEM_NAME;
  String ADD_DES;
  int ITEM_PRICE;
  int ITEM_QUANTITY ;
  int ITEM_GST;
  int ITEM_CESS;

  show_item_details ({

    required this.ITEM_NAME,
    required this.ADD_DES,
    required this.ITEM_PRICE,
    required this.ITEM_QUANTITY,
    required this.ITEM_GST,
    required this.ITEM_CESS,

  });
}

GlobalKey <FormState> owner_side_key = GlobalKey<FormState>();
TextEditingController business_name_controller = TextEditingController();
String? business_name;
TextEditingController owner_name_controller = TextEditingController();
String? owner_name;
TextEditingController owner_GST_IN_controller = TextEditingController();
String? owner_GST_IN;
TextEditingController business_location_controller = TextEditingController();
String? business_location;
TextEditingController owner_date_controller = TextEditingController();
String? owner_date;

TextEditingController owner_street_controller = TextEditingController();
String? owner_street;
TextEditingController owner_city_controller = TextEditingController();
String? owner_city;
TextEditingController owner_state_controller = TextEditingController();
String? owner_state;
TextEditingController owner_zip_controller = TextEditingController();
String? owner_zip;
TextEditingController owner_country_controller = TextEditingController();
String? owner_country;


GlobalKey <FormState> customer_side_key = GlobalKey<FormState>();

TextEditingController customer_name_controller = TextEditingController();
String? customer_name;
TextEditingController customer_GST_IN_controller = TextEditingController();
String? customer_GST_IN;
TextEditingController supply_location_controller = TextEditingController();
String? supply_location;

TextEditingController customer_street_controller = TextEditingController();
String? customer_street;
TextEditingController customer_city_controller = TextEditingController();
String? customer_city;
TextEditingController customer_state_controller = TextEditingController();
String? customer_state;
TextEditingController customer_zip_controller = TextEditingController();
String? customer_zip;
TextEditingController customer_country_controller = TextEditingController();
String? customer_country;

GlobalKey <FormState> add_item_key = GlobalKey<FormState> ();
TextEditingController item_name_controller =TextEditingController();
String? item_name;
TextEditingController item_dec_controller =TextEditingController();
String? item_dec;
TextEditingController item_price_controller =TextEditingController();
int? item_price;
// TextEditingController item_quantity_controller =TextEditingController();
// String? item_quantity;
int item_quantiy = 1;
TextEditingController item_GST_controller =TextEditingController();
int? item_GST = 0;
TextEditingController item_cess_controller =TextEditingController();
int? item_cess = 0;




