import 'package:flutter/material.dart';
import 'package:mx_player_clone/all_screen.dart';
import 'package:mx_player_clone/movie_screen.dart';
import 'package:mx_player_clone/mxshorts.dart';
import 'package:mx_player_clone/mxvideos.dart';
import 'package:mx_player_clone/newandFree_screen.dart';
import 'package:mx_player_clone/shows_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/Mx_logo.png",
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Row(
                      children: const [
                        Text(
                          "MX",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "PLAYER",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/search.png",
                      height: 22,
                      width: 22,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Image.asset(
                      "assets/bell.png",
                      height: 25,
                      width: 25,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Image.asset(
                      "assets/profile-user.png",
                      height: 25,
                      width: 25,
                      color: Colors.blue,
                    ),
                  ],
                )
              ],
            ),
          ),
          elevation: 0,
          bottom: const TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              indicatorWeight: 3,
              isScrollable: true,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 12),
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: "SHOWS",
                ),
                Tab(text: "MOVIES"),
                Tab(text: "NEW & FREE🔥"),
                Tab(text: "MX VIDEOS"),
                Tab(text: "MX SHORTS"),
              ]),
        ),
        body: const TabBarView(children: [
          all_screen(),
          Show_screen(),
          Movie_screen(),
          newandFree_screen(),
          mxvideos(),
          mxshorts()
        ]),
      ),
    );
  }
}
