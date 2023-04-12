import 'package:flutter/material.dart';
import 'package:lec2_1/utils/datafile.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Map<String,dynamic>> character =[
    {
      'image' :  imgpath + a1,
      'moviename' :"Leo",
      'realname' : "Vijay Thalapathy",
      'about':"On 22 June 1974, a legend was born. Though nobody knew abouth the "
          "greatness of heights he would one day scale, Born to Mr. S. A. Chandrasekhar"
          " and Mrs. Shoba in Chennai, Joseph Vijay Chandrasekhar was also known as Thalapathy."
          " He is an Indian actor, dancer, playback singer and philanthropist who works in "
          "Tamil Cinema. He has acted in 64 films as a lead actor and won numerous awards,"
          " including eight Vijay Awards, three Tamil Nadu State Film Awards, and SIIMA Award.",
    },
    {
      'image' : imgpath + a2,
      'moviename' :"Vikram",
      'realname' : "Vijay Sethupathi",
      'about':"One of the most popular and successful actors of Tamil Cinema, Vijay Sethupathi`s "
          "rise to fame and stardom is phenomenal. Having started his career playing small and "
          "supporting roles, for the first few years he almost went unnoticed but to turn around and "
          "make both the audience and the critics appreciate his roles is no mean feat. His choice of "
          "films have been immaculate, and on the back of his stellar performances in Pizza, Thenmerku "
          "Paruvakaatru, Soodhu Kavvum, and Sethupathi, his fans endearingly called him Makkal Selvam "
          "(People`s Son). Apart from being a successful actor, Vijay Sethupathi has donned other roles"
          " as a producer, lyricist and dialogue write with eloquence.",
    },
    {
      'image' : imgpath + a3,
      'moviename' :"Vikram",
      'realname' : "Surya",
      'about':" Saravanan alias Suriya Sivakumar is popularly known as Suriya and is an Indian actor in the Tamil film industry. "
          "He is well known for his versatile roles in various films. Surya's father is the renowned veteran Tamil actor Sivakumar. "
          "He is the eldest of the three children; his younger brother is the award-winning actor Karthik Sivakumar, and he has a younger sister named Brindha, who is married to an industrialist named Sivakumar",
    },
    {
      'image' : imgpath + a4,
      'moviename' :"Kaithi",
      'realname' : "Karthi",
      'about':"Karthik Sivakumar, better known by his mononymous screen name, Karthi is an Indian film actor who mainly works "
          "in the Tamil film industry. The actor made his debut with the 2007 movie, Paruthiveeran where he played the titlular "
          "character and won several accolades including a Tamil Nadu State Film Award and a Filmfare Award for Best Actor for"
          " his stellar performance. Karthi, over the years has starred in several other commercially successful and critically "
          "acclaimed movies like Paiyaa (2010), Naan Mahaan Alla (2010), Biryani (2013), and Madras (2014). Apart from acting, "
          "Karthi is also a philanthropist who actively participates in several social welfare causes and encourages his fans "
          "to do the same through Makkal Nala Mandram, a social welfare club that he inaugurated.",
    },
    {
      'image' : imgpath + a5,
      'moviename' :"Vikram",
      'realname' : "Kamal Hashan",
      'about':"Kamal Haasan is an Indian actor, director, and politician from Tamil Nadu The acclaimed actor has acted "
          "in more than 220 films, and in 2019, became one of the few actors in India to have completed 60 years in the business"
          " The versatile Kamal Haasan has appeared in Telugu, Malayalam, Kannada, Hindi, and Bengali films as well"
      "Haasan started his career as a child artiste in 1960, and over his lifetime, he won four National Film Awards "
          "and 19 Filmfare Awards. He was awarded the Kalaimamani award in 1984, the Padma Shri in 1990, the Padma Bhushan "
          "in 2014, and the Ordre des Arts et des Lettres from the French government in 2016",
    },
    {
      'image' : imgpath + a6,
      'moviename' :"Vikram",
      'realname' : "Fahad Khan",
      'about':"Fahadh Faasil, son of popular Malayalam director A. M. Fazil, began his career as an actor and eventually "
          "ventured into producing movies as well. Making his debut at the age of 19, Fahadh starred in his father`s film "
          "Kaiyethum Doorath (2002), only to see the film fail at the box office. The young actor then took a break to "
          "pursue his studies and only returned to the film industry in 2009 starring in the anthology movie Kerala Cafe. "
          "The actor has since then appeared in several successful movies such as 22 Female Kottayam (2012), Annayum Rasoolum "
          "(2012), Bangalore Days (2014), and Maheshinte Prathikaaram (2016).",
    },
    {
      'image' : imgpath + a7,
      'moviename' :"Vikram",
      'realname' : "Arjun Das",
      'about':"Arjun Das is an Indian film actor and dubbing artist known for his roles as Das in Tamil film Master and Vinod in "
          "Andhaghaaram. He works in the Tamil films and web series. He was born on 5 October 1990 in a middle-class family in "
          "Chennai, Tamil Nadu, India. His father’s name and mother’s name are not known. He has a sister named Malavika Das."
          " Arjun Das age is 32 Years Old (as in 2023). His height is 5 Ft 8 inches tall, and his weight is 72 Kg approx."
          " He made his acting debut in the Tamil film Perumaan in 2012.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "LOKESH CINEMATIC UNIVERSE",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xff10002B),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment(-0.9,0),
              child:  Text("L.C.U",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
              ),
            ),
          ),
          Expanded(
              flex: 15,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: character.map((e) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 15,
                        child: Container(
                          height: h / 2.5,
                          width: w / 1.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xff591898),
                                Color(0xff3D096D),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const Alignment(0, -4),
                                child: Image(
                                  height: 250,
                                  width: 250,
                                  image: AssetImage(e['image']),
                                ),
                              ),
                              Positioned(
                                bottom: 140,
                                left: 10,
                                child: Text(
                                  e['moviename'],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 100,
                                left: 10,
                                child: Text(
                                  e['realname'],
                                  style: const TextStyle(
                                    color: Color(0xff908897),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 50,
                                left: 5,
                                child: InkWell(
                                  onTap: () {
                                    List details = [
                                      e['image'],
                                      e['moviename'],
                                      e['realname'],
                                      e['about']
                                    ];
                                    Navigator.pushNamed(context, 'page2',
                                        arguments: details);
                                  },
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    elevation: 10,
                                    child: Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff160427),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      alignment: Alignment.center,
                                      child: const Text(
                                        "KNOW MORE",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),

              ),
          ),
        ],
      ),
      backgroundColor: const Color(0xff240046),
    );
  }
}
