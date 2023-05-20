import 'package:flutter/material.dart';

class all_screen extends StatefulWidget {
  const all_screen({super.key});

  @override
  State<all_screen> createState() => _all_screenState();
}

class _all_screenState extends State<all_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    bannercantainer(
                        "https://m.media-amazon.com/images/I/91LIhLeiVWL._AC_SL1500_.jpg"),
                    bannercantainer(
                        "https://img.buzzfeed.com/buzzfeed-static/static/2022-04/4/20/asset/0f12255e2129/sub-buzz-817-1649105149-10.jpg"),
                    bannercantainer(
                        "https://m.media-amazon.com/images/I/71niXI3lxlL._SY679_.jpg"),
                    bannercantainer(
                        "https://marketplace.canva.com/EAFH3gODxw4/1/0/1131w/canva-black-%26-white-modern-mystery-forest-movie-poster-rLty9dwhGG4.jpg"),
                    bannercantainer(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrUQ3tB_Z5X6rfehzKWVC9udWYYklUJS2DPw"),
                    bannercantainer(
                        'https://images.complex.com/complex/images/c_fill,dpr_auto,f_auto,q_auto,w_1400/fl_lossy,pg_1/wjnhpz3osrai5aningjl/titanic?fimg-client-default'),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconContainer("assets/microphone.png", "Podcast"),
                    IconContainer("assets/musical-note.png", "Music"),
                    IconContainer("assets/upcoming.png", "Upcomings"),
                    IconContainer("assets/list.png", "My List"),
                    IconContainer("assets/download.png", "Downloads"),
                    IconContainer("assets/new-release.png", "New Release"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Watch For Free",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    ImageIcon(
                      AssetImage(
                        "assets/right-arrow.png",
                      ),
                      color: Colors.black38,
                      size: 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Postercantainer(
                        "https://m.media-amazon.com/images/M/MV5BNDIzMTk4NDYtMjg5OS00ZGI0LWJhZDYtMzdmZGY1YWU5ZGNkXkEyXkFqcGdeQXVyMTI5NzUyMTIz._V1_.jpg"),
                    Postercantainer(
                        "https://qqcdnpictest.mxplay.com/pic/f4b655bb875cafdcdf6a2a6494061b87/en/16x9/320x180/0a44966606bd51df29511dc2ba47daa4_1920x1080.webp"),
                    Postercantainer(
                        "data:image/jpeg;base64,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"),
                    Postercantainer(
                        "https://rukminim1.flixcart.com/image/416/416/k0h12fk0/poster/g/3/t/medium-joker-movie-poster-for-room-office-13-inch-x-19-inch-original-imafk9kg4hczamuz.jpeg?q=70"),
                    Postercantainer(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiXdj7m1ujS1zPj6mB5gzd1_6Co6xshEZrGQ"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "MX Original Web Shows",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    ImageIcon(
                      AssetImage(
                        "assets/right-arrow.png",
                      ),
                      color: Colors.black38,
                      size: 15,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    webshowsPostercantainer(
                        "https://filmfare.wwmindia.com/content/2019/apr/indian-web-series-sacred-games-11555420126.jpg"),
                    webshowsPostercantainer(
                        "https://aniportalimages.s3.amazonaws.com/media/details/Mumbai_diaries.png"),
                    webshowsPostercantainer(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyM4hbzRMGoqDkdy4NzGzTt5iau_rnK2Mn7g"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Pick Your Language",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    ImageIcon(
                      AssetImage(
                        "assets/right-arrow.png",
                      ),
                      color: Colors.black38,
                      size: 15,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      //crossAxisCount: 2,
                      //scrollDirection: Axis.horizontal,
                      children: [
                        langugecantainer("", "HINDI", Colors.blue),
                        langugecantainer("", "ENGLISH", Colors.red),
                        langugecantainer("", "TELUGU", Colors.pink),
                      ],
                    ),
                    Row(
                      //crossAxisCount: 2,
                      //scrollDirection: Axis.horizontal,
                      children: [
                        langugecantainer("", "MARATHI", Colors.yellow),
                        langugecantainer("", "TAMIL", Colors.black),
                        langugecantainer("", "BANGALI", Colors.purple),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Top 10 Show This Week",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    ImageIcon(
                      AssetImage(
                        "assets/right-arrow.png",
                      ),
                      color: Colors.black38,
                      size: 15,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    webshowsPostercantainer(
                        "https://images.news18.com/ibnlive/uploads/2022/04/rajamouli-rrr.png"),
                    webshowsPostercantainer(
                        "https://aniportalimages.s3.amazonaws.com/media/details/Mumbai_diaries.png"),
                    webshowsPostercantainer(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyM4hbzRMGoqDkdy4NzGzTt5iau_rnK2Mn7g"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bannercantainer(String imgurl) => Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 390,
          height: 200,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imgurl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );

  Widget IconContainer(String imgUrl, String text) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23), color: Colors.blue),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ImageIcon(
                  AssetImage(
                    imgUrl,
                  ),
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
              ),
            )
          ],
        ),
      );

  Widget Postercantainer(String imgurl) => Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imgurl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );

  Widget webshowsPostercantainer(String imgurl) => Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 180,
          height: 280,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imgurl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );

  Widget langugecantainer(String imgurl, String text, Color col) => Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 200,
          height: 120,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Stack(
            children: [
              Container(
                width: 200,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    imgurl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: col.withOpacity(0.3),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
