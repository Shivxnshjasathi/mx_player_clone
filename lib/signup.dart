import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mx_player_clone/login.dart';
import 'package:page_transition/page_transition.dart';

import 'bottomnavBar.dart';

class Signup_screen extends StatefulWidget {
  Signup_screen({super.key});

  @override
  State<Signup_screen> createState() => _Signup_screenState();
}

class _Signup_screenState extends State<Signup_screen> {
  final emailcontroller = TextEditingController();
  final Passwordcontroller = TextEditingController();

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      User? users = userCredential.user;
      print(users!.uid);
      print("User Registered");
    } catch (error) {
      print("An error occured $error");
    }
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register screen"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.black12),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    controller: emailcontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50)),
                        labelText: "Email",
                        hintText: "Enter your Email"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.black12),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    controller: Passwordcontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50)),
                        labelText: "password",
                        hintText: "Enter your password"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  createUserWithEmailAndPassword(
                      emailcontroller.text, Passwordcontroller.text);
                  Navigator.push(
                    context,
                    PageTransition(
                      curve: Curves.bounceOut,
                      type: PageTransitionType.rotate,
                      alignment: Alignment.topCenter,
                      child: bottomnavbar(),
                    ),
                  );
                },
                child: Container(
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.blue),
                  child: const Center(
                    child: Text("Signup",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  Login_screen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("already a user "),
                    Text("login",style: TextStyle(color: Colors.blue),),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
