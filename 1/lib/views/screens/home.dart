import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List details = [
    {
      'mnc': "Tesla",
      'ceo': "Elon Musk",
      'logo': 'build/flutter_assets/image/Tesla.png',
      'image': 'build/flutter_assets/image/Tesla1.jpg',
      'des':
      'Tesla Inc (Tesla) is an automotive and energy company. It designs, develops,'
          ' manufactures, sells, and leases electric vehicles and energy generation '
          'and storage systems. The company produces and sells the Model Y, Model 3, '
          'Model X, Model S, Cybertruck, Tesla Semi, and Tesla Roadster vehicles.'
    },
    {
      'mnc': "Tata Motors",
      'ceo': "Guenter Butschek",
      'logo': 'build/flutter_assets/image/Tata.png',
      'image': 'build/flutter_assets/image/Tata2.jpg',
      'des':
      'Tata Group, privately owned conglomerate of nearly 100 companies encompassing several '
          'primary business sectors: chemicals, consumer products, energy, engineering, information '
          'systems, materials, and services. Headquarters are in Mumbai. Ratan Tata.'
    },
    {
      'mnc': "Apple",
      'ceo': "Tim Cook",
      'logo': 'build/flutter_assets/image/Apple.png',
      'image': 'build/flutter_assets/image/Apple3.jpg',
      'des':
      'Apple Inc. designs, manufactures and markets smartphones, personal computers, tablets,'
          ' wearables and accessories, and sells a variety of related services. The Companys'
          ' products include iPhone, Mac, iPad, and Wearables, Home and Accessories. iPhone is '
          'the Companys line of smartphones based on its iOS operating system.'
    },
    {
      'mnc': "Google",
      'ceo': "Sundar Pichai",
      'logo': 'build/flutter_assets/image/Google.png',
      'image': 'build/flutter_assets/image/Google4.jpg',
      'des':
      'Google LLC is an American multinational technology company that focuses on artificial '
          'intelligence, search engine technology, online advertising, cloud computing, computer '
          'software, quantum computing, e-commerce, and consumer electronics.'
    },
    {
      'mnc': "Wipro",
      'ceo': "Thierry Delaporte",
      'logo': 'build/flutter_assets/image/Wipro.png',
      'image': 'build/flutter_assets/image/Wipro5.jpg',
      'des':
      'Wipro Limited (formerly, Western India Palm Refined Oils Limited) is an Indian multinational '
          'corporation that provides information technology, consulting and business process services.'
          ' Delaporte has served as CEO and managing director of Wipro from July 2020. It is'
          ' headquartered in Bangalore, Karnataka, India.'
    },
    {
      'mnc': "Infosys",
      'ceo': "Salil Parekh",
      'logo': 'build/flutter_assets/image/Infosys.png',
      'image': 'build/flutter_assets/image/Infosys6.jpg',
      'des':
      'Infosys Limited is an Indian multinational information technology company that provides '
          'business consulting, information technology and outsourcing services.'
    },
    {
      'mnc': "LG",
      'ceo': "William Cho",
      'logo': 'build/flutter_assets/image/LG.png',
      'image': 'build/flutter_assets/image/LG7.jpg',
      'des':
      'LG Electronics, Inc. engages in the manufacturing of display devices, home appliances, '
          'multimedia goods, electronic parts and develops software. It operates through the '
          'following business areas: Home Entertainment, Mobile Communications, Home Appliance, '
          'Air-Conditioning, Energy Solution and Independent business area.'
    },
    {
      'mnc': "FaceBook",
      'ceo': "Mark Zuckerberg",
      'logo': 'build/flutter_assets/image/FaceBook.png',
      'image': 'build/flutter_assets/image/FaceBook8.jpg',
      'des':
      'Facebook, American online social network service that is part of the company '
          'Meta Platforms. Facebook was founded in 2004 by Mark Zuckerberg, Eduardo Saverin, '
          'Dustin Moskovitz, and Chris Hughes, all of whom were students at Harvard University. '
    },
    {
      'mnc': "Samsung",
      'ceo': "Lee Kun-hee",
      'logo': 'build/flutter_assets/image/Samsung.png',
      'image': 'build/flutter_assets/image/Samsung9.jpg',
      'des':
      'Samsung, South Korean company that is one of the worlds largest producers of '
          'electronic devices. Samsung specializes in the production of a wide variety of '
          'consumer and industry electronics, including appliances, digital media devices, '
          'semiconductors, memory chips, and integrated systems.'
    },
    {
      'mnc': "Nike",
      'ceo': "John Donahoe",
      'logo': 'build/flutter_assets/image/Nike.png',
      'image': 'build/flutter_assets/image/Nike10.jpg',
      'des':
      'The worlds largest athletic apparel company, Nike is best known for its footwear, apparel, '
          'and equipment. Founded in 1964 as Blue Ribbon Sports, the company became Nike in 1971 '
          'after the Greek goddess of victory. One of the most valuable brands among sport businesses, '
          'Nike employs over 76,000 people worldwide.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double H = s.height;
    double W = s.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MNC CEOs",
          style: TextStyle(
            fontSize: 25,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff212121),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: details.map((e) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5,
                child: InkWell(
                  onTap: () {
                    Route MNC = MaterialPageRoute(
                        builder: (context) => MNC(
                            ceo: e['ceo'],
                            mnc: e['mnc'],
                            des: e['des'],
                            logo: e['logo'],
                            image: e['image']));
                    Navigator.push(context, MNC);
                  },
                  child: Container(
                    height: 90,
                    //height: H / 9,
                    width: W,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(e['logo']),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e['mnc'],
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                e['ceo'],
                                style: const TextStyle(
                                  color: Color(0xffB0B0B0),
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(e['image']),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );

  }
}
