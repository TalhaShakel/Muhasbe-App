import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhasebe_app/Components/ConstColors.dart';
import 'package:muhasebe_app/screens/Main/Home2.dart';

import 'login_scree.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => FirebaseAuth.instance.currentUser == null
                    ? LoginScreen()
                    : Home2())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: ConstColors.background,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
              ),
              Container(
                height: 213,
                width: 212,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(46),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff000000).withOpacity(0.15),
                          blurRadius: 20,
                          spreadRadius: 0,
                          offset: Offset(0, 0)),
                    ]),
                child: Image.asset('assets/images/applogo.png'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3.6,
              ),
              Text(
                "Powered By Google Inc",
                style: TextStyle(
                    fontFamily: 'Trial',
                    fontSize: 16,
                    color: Color(0xff828282)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
