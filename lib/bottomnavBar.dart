import 'package:flutter/material.dart';
import 'package:mx_player_clone/all_screen.dart';
import 'package:mx_player_clone/gold.dart';
import 'package:mx_player_clone/live.dart';
import 'package:mx_player_clone/local.dart';
import 'package:mx_player_clone/main.dart';
import 'package:mx_player_clone/mxtube.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  int selectedindex = 1;

  var screens = [Local(), MyHomePage(), live(), mxtube(), gold()];

  void onitemtapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  Icon(Icons.folder),
                ],
              ),
              label: "Local"),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle), label: "Video"),
          BottomNavigationBarItem(icon: Icon(Icons.stream), label: "Live"),
          BottomNavigationBarItem(
              icon: Icon(Icons.live_tv_rounded), label: "Mxtube"),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle), label: "gold")
        ],
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black45,
        elevation: 0,
        currentIndex: selectedindex,
        onTap: onitemtapped,
      ),
    );
  }
}
