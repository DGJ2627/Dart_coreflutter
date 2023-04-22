import 'package:flutter/material.dart';
import '../../modal/contact_detalies.dart';
import '../../utils/Color.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

class detail_page extends StatefulWidget {
  const detail_page({Key? key}) : super(key: key);

  @override
  State<detail_page> createState() => _detail_pageState();
}

class _detail_pageState extends State<detail_page> {
  @override
  Widget build(BuildContext context) {
    Contact contact = ModalRoute.of(context)!.settings.arguments as Contact;
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(16),
          child: Text("Contact"),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {

              });
            },
            icon: const Icon(Icons.circle),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                isdark = !isdark;
              });
            },
            icon: const Icon(Icons.more_vert_rounded),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: (isdark = !isdark)
            ? Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                foregroundImage: (contact.imgfile != null)
                    ? FileImage(contact.imgfile!)
                    : null,
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 4,
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.black),
                    onPressed: () async{
                      Globals.all_contact.remove(contact);
                      await Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
                      setState(() {

                      });
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit, color: Colors.black),
                    onPressed: () async{
                      Globals.all_contact.remove(contact);
                      await Navigator.of(context).pushNamedAndRemoveUntil('add_contact_page', (route) => false);
                      setState(() {

                      });
                    },
                  ),
                  SizedBox(width: 10,),
                ],
              ),
              const Spacer(),
              Text(
                "${contact.firstname} ${contact.lastname}",
                style:
                    const TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              const SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "+91 ${contact.phonenumber}",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const Spacer(),
              const SizedBox(
                height: 50,
              ),
              const Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //phone
                  FloatingActionButton(
                    heroTag: null,
                    mini: true,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.tealAccent.shade400,
                    elevation: 0,
                    child: const Icon(Icons.phone),
                    onPressed: () async{
                      Uri url = Uri.parse("tel: +91 ${contact.phonenumber}");
                      await launchUrl(url);
                    },
                  ),
                  //message
                  FloatingActionButton(
                    heroTag: null,
                    mini: true,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.tealAccent.shade400,
                    elevation: 0,
                    child: const Icon(Icons.message),
                    onPressed: () async{
                      Uri url = Uri.parse("sms:+91 ${contact.phonenumber}");
                      await launchUrl(url);
                    },
                  ),
                  //Email
                  FloatingActionButton(
                    heroTag: null,
                    mini: true,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.tealAccent.shade400,
                    elevation: 0,
                    child: const Icon(Icons.email),
                    onPressed: () async{
                      Uri url = Uri.parse("mailto:${contact.email}");
                      await launchUrl(url);
                    },
                  ),
                  // share
                  FloatingActionButton(
                    heroTag: null,
                    mini: true,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.tealAccent.shade400,
                    elevation: 0,
                    child: const Icon(Icons.share),
                    onPressed: () async {
                      await Share.share(
                          "${contact.firstname} ${contact.lastname} => ${contact.phonenumber}");
                    },
                  ),
                ],
              ),
              const Divider(
                color: Colors.black,
                indent: 20,
                endIndent: 20,
              ),
              const Spacer(),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(height: 150,),
            ],
          ),
        )
            : Container(
             alignment: Alignment.center,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                foregroundColor: const Color(0xff4E31AA),
                foregroundImage: (contact.imgfile != null)
                    ? FileImage(contact.imgfile!)
                    : null,
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 4,
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.white),
                    onPressed: () async{
                      Globals.all_contact.remove(contact);
                      await Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
                      setState(() {
                      });
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit, color: Colors.white),
                    onPressed: () async {
                      Globals.all_contact.remove(contact);
                      await Navigator.of(context).pushNamedAndRemoveUntil('add_contact_page', (route) => false);
                      setState(() {

                      });
                    },
                  ),
                ],
              ),
              const Spacer(),
              Text(
                "${contact.firstname} ${contact.lastname}",
                style:
                 const TextStyle(fontSize: 26, fontWeight: FontWeight.w500,),
              ),
              const Spacer(),
              const SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "+91 ${contact.phonenumber}",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const Spacer(),
              const SizedBox(
                height: 50,
              ),
              const Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.black,
              ),
              const Spacer(),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //phone
                  FloatingActionButton(
                    heroTag: null,
                    mini: true,
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xff4E31AA),
                    elevation: 0,
                    child: const Icon(Icons.phone),
                    onPressed: () async{
                      Uri url = Uri.parse("tel: +91 ${contact.phonenumber}");
                      await launchUrl(url);
                    },
                  ),
                  //message
                  FloatingActionButton(
                    heroTag: null,
                    mini: true,
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xff4E31AA),
                    elevation: 0,
                    child: const Icon(Icons.message),
                    onPressed: () async{
                      Uri url = Uri.parse("sms:+91 ${contact.phonenumber}");
                      await launchUrl(url);
                    },
                  ),
                  //Email
                  FloatingActionButton(
                    heroTag: null,
                    mini: true,
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xff4E31AA),
                    elevation: 0,
                    child: const Icon(Icons.email),
                    onPressed: () async{
                      Uri url = Uri.parse("mailto:${contact.email}");
                      await launchUrl(url);
                    },
                  ),
                  // share
                  FloatingActionButton(
                    heroTag: null,
                    mini: true,
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xff4E31AA),
                    elevation: 0,
                    child: const Icon(Icons.share),
                    onPressed: () async {
                      await Share.share(
                          "${contact.firstname} ${contact.lastname} => ${contact.phonenumber}");

                    },
                  ),
                ],
              ),
              const Spacer(),
              const SizedBox(
                height: 50,
              ),
              const Divider(
                color: Colors.black,
                indent: 20,
                endIndent: 20,
              ),
              const Spacer(),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(height: 100,),
            ],
          ),
        ),
      ),

    );
  }
}
