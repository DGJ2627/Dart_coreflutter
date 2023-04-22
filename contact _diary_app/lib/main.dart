import 'dart:async';
import 'dart:io';
import 'package:contactapp/utils/Color.dart';
import 'package:contactapp/views/screens/add_contact_page.dart';
import 'package:contactapp/views/screens/detail_page.dart';
import 'package:contactapp/views/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'modal/contact_detalies.dart';

void main() async{

  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle());
  // await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp],);
  runApp(
    const Gautam(),
  );
}

class Gautam extends StatefulWidget {
  const Gautam({Key? key}) : super(key: key);

  @override
  State<Gautam> createState() => _GautamState();
}

class _GautamState extends State<Gautam> {
  bool isdark = false;

  @override


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mode_theme.theme_is_ligth,
      darkTheme: mode_theme.theme_is_dark,
      themeMode: (isdark) ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash_page',
      routes: {
        '/': (context) => Scaffold(
              appBar: AppBar(
                title: Padding(
                  padding: const EdgeInsets.all(16),
                  child: const Text("Contact"),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isdark = !isdark;
                      });
                    },
                    icon: const Icon(Icons.circle),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert_rounded),
                  ),
                ],
              ),
              body: (Globals.all_contact.isNotEmpty)
                  ? ListView.builder(
                      itemBuilder: (context ,i ){
                        return ListTile(
                          onTap: (){
                            Navigator.of(context).pushNamed('detail_page',arguments: Globals.all_contact[i]);
                          },
                          leading: CircleAvatar(
                            foregroundImage: FileImage(Globals.all_contact[i].imgfile as File),
                            radius: 60,
                          ),
                          title: Text ("${Globals.all_contact[i].firstname} ${Globals.all_contact[i].lastname}"),
                          subtitle: Text("+91 ${Globals.all_contact[i].phonenumber}"),
                          trailing: IconButton(onPressed: (){},icon: const Icon(Icons.phone,color: Colors.lightGreenAccent,)),
                        );
                      },
                      itemCount: Globals.all_contact.length,
                  ) 
                  :  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/download-removebg-preview.png",
                          color: (isdark)
                              ? const Color(0xff4E31AA)
                              : Colors.tealAccent.shade400,
                          height: 150,
                          width: 150,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "You have no Contacts yet.",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              floatingActionButton: FloatingActionButton(
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('add_contact_page');
                },
              ),
            ),
        'splash_page': (context) => const splash_page(),
        'add_contact_page' : (context) => const add_contact_page(),
        'detail_page' : (context) => const detail_page(),
      },
    );
  }
}
