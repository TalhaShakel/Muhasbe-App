import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:muhasebe_app/screens/Main/fasting.dart';
import 'package:muhasebe_app/screens/Main/notes.dart';
import 'package:muhasebe_app/screens/Main/prayer_tracker.dart';
import 'package:muhasebe_app/screens/Main/quran_moon.dart';
import 'package:muhasebe_app/screens/Main/reports.dart';
import 'package:muhasebe_app/screens/Main/todo_list.dart';
import 'package:muhasebe_app/screens/Main/travel_tracker.dart';

import '../../Components/ConstColors.dart';
import '../DrawerScreens/Home.dart';
import '../DrawerScreens/account.dart';
import '../DrawerScreens/activity_dashboard.dart';
import '../HomePage/daily_reflection.dart';
import '../HomePage/m_routine.dart';
import 'activity.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  Widget cancelButton = TextButton(
    child: Text("Yes"),
    onPressed: () {
      SystemNavigator.pop();
    },
  );
  Widget continueButton = TextButton(
    child: Text("No"),
    onPressed: () {
      Get.back();
    },
  );
  var _format = HijriCalendar.now();
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('users')
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .snapshots(),
        builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasData) {
            return WillPopScope(
              onWillPop: () async {
                final val = await
                    // showDialog<bool>(
                    //   context: context,
                    //   builder: (BuildContext context) {
                    //     return AlertDialog(
                    //       title: Text("Confirm Exit"),
                    //       content: Text("Are you sure you want to exit?"),
                    //       actions: [
                    //         cancelButton,
                    //         continueButton,
                    //       ],
                    //     );
                    //   },
                    // );
                    Get.dialog(AlertDialog(
                  title: Text("Confirm Exit"),
                  content: Text("Are you sure you want to exit?"),
                  actions: [
                    cancelButton,
                    continueButton,
                  ],
                ));
                if (val != null) {
                  return Future.value(val);
                } else {
                  return Future.value(false);
                }
              },
              child: Scaffold(
                key: scaffoldKey,
                drawer: Drawer(
                    width: 270,
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30)),
                    // ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 132,
                              width: 270,
                              decoration: BoxDecoration(
                                color: ConstColors.primaryColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 37),
                                      child: Container(
                                        height: 52,
                                        width: 52,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color(0xffBBC3CE)
                                                    .withOpacity(0.60),
                                                blurRadius: 12,
                                                spreadRadius: 0,
                                                offset: Offset(
                                                  4,
                                                  4,
                                                )),
                                            BoxShadow(
                                                color: Color(0xffFDFFFF)
                                                    .withOpacity(0.80),
                                                blurRadius: 12,
                                                spreadRadius: 0,
                                                offset: Offset(-4, -4))
                                          ],
                                        ),
                                        child: Center(
                                          child: FaIcon(
                                            FontAwesomeIcons.user,
                                            color: ConstColors.primaryColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 55,
                                          ),
                                          Text(
                                            snapshot.data!['name'],
                                            style: TextStyle(
                                                fontFamily: 'Trial',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                color: Colors.white),
                                          ),
                                          // Text(
                                          //   "View Profile",
                                          //   style: TextStyle(
                                          //       color: Colors.white, fontSize: 10),
                                          // )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home2()));
                          },
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.house,
                              color: ConstColors.primaryColor,
                              size: 20,
                            ),
                            title: Text(
                              "Home",
                              style:
                                  TextStyle(fontSize: 16, fontFamily: 'Trial'),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Account()));
                          },
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.user,
                              color: ConstColors.primaryColor,
                              size: 20,
                            ),
                            title: Text(
                              "Your Account",
                              style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.userEdit,
                              color: ConstColors.primaryColor,
                              size: 20,
                            ),
                            title: Text(
                              "Personalization",
                              style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ActivityDashboard()));
                          },
                          child: ListTile(
                            leading: FaIcon(
                              FontAwesomeIcons.tasks,
                              color: ConstColors.primaryColor,
                              size: 20,
                            ),
                            title: Text(
                              "Activity Dashboard",
                              style:
                                  TextStyle(fontSize: 16, fontFamily: 'Trial'),
                            ),
                          ),
                        ),
                        Spacer(),
                        ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.signOut,
                            color: ConstColors.primaryColor,
                          ),
                          title: Text(
                            'Sign Out',
                            style: TextStyle(
                                fontFamily: 'CodeNext-Trial',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: ConstColors.primaryColor),
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "Version 1.0.0",
                              style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 10,
                                  color: ConstColors.primaryColor),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )),
                appBar: PreferredSize(
                  child: Container(
                    height: 114,
                    decoration: BoxDecoration(
                        color: ConstColors.primaryColor,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff000000).withOpacity(0.10),
                              blurRadius: 10,
                              spreadRadius: 0,
                              offset: Offset(5, 5))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: FittedBox(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                scaffoldKey.currentState?.openDrawer();
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                    child: Center(
                                        child: FaIcon(
                                      FontAwesomeIcons.bars,
                                      size: 18,
                                      color: ConstColors.secondary,
                                    ))),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 35,
                                  ),
                                  Text(
                                    "Welcome, ",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Trial',
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    snapshot.data!['name'],
                                    style: TextStyle(
                                        fontFamily: 'CodeNext-Trial',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 35,
                                  ),
                                  RichText(
                                      text: TextSpan(
                                    text: DateFormat('dd MMM, yyyy')
                                        .format(DateTime.now()),
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Trial',
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Hijri: ${_format.toFormat('MMMM dd')}",
                                    softWrap: true,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Book',
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  preferredSize: Size.fromHeight(70.0),
                ),
                body: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: ConstColors.background,
                  child: SingleChildScrollView(
                    child: FittedBox(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 22,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Routine()));
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 163,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            ConstColors.secondary,
                                            ConstColors.primaryColor,
                                          ]),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xffFFFFFF)
                                                .withOpacity(0.72),
                                            blurRadius: 10,
                                            spreadRadius: 0,
                                            offset: Offset(
                                              3,
                                              3,
                                            )),
                                        BoxShadow(
                                            color: Color(0xff032B47)
                                                .withOpacity(0.24),
                                            blurRadius: 40,
                                            spreadRadius: 0,
                                            offset: Offset(0, 20))
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 32,
                                        ),
                                        Text(
                                          "Morning Focus",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontFamily: 'Trial',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 120, top: 20),
                                          child: FaIcon(
                                            FontAwesomeIcons.arrowRight,
                                            color: Colors.white,
                                            size: 18,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                // Vx
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 100,
                                  width: 163,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          ConstColors.secondary,
                                          ConstColors.primaryColor,
                                        ]),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.72),
                                          blurRadius: 10,
                                          spreadRadius: 0,
                                          offset: Offset(
                                            3,
                                            3,
                                          )),
                                      BoxShadow(
                                          color: Color(0xff032B47)
                                              .withOpacity(0.24),
                                          blurRadius: 40,
                                          spreadRadius: 0,
                                          offset: Offset(0, 20))
                                    ],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DailyReflection()));
                                    },
                                    child: Container(
                                      height: 98,
                                      width: 161,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(19),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "       Daily \nRefelections",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: 'Trial',
                                                fontWeight: FontWeight.w500,
                                                color:
                                                    ConstColors.primaryColor),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 120, top: 7),
                                            child: FaIcon(
                                              FontAwesomeIcons.arrowRight,
                                              color: ConstColors.secondary,
                                              size: 18,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 21,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => TodoList()));
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 163,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            ConstColors.secondary,
                                            ConstColors.primaryColor,
                                          ]),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xffFFFFFF)
                                                .withOpacity(0.72),
                                            blurRadius: 10,
                                            spreadRadius: 0,
                                            offset: Offset(
                                              3,
                                              3,
                                            )),
                                        BoxShadow(
                                            color: Color(0xff032B47)
                                                .withOpacity(0.24),
                                            blurRadius: 40,
                                            spreadRadius: 0,
                                            offset: Offset(0, 20))
                                      ],
                                    ),
                                    child: Container(
                                      height: 98,
                                      width: 161,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(19),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 33,
                                          ),
                                          Text(
                                            "ToDo List",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: 'Trial',
                                                fontWeight: FontWeight.w500,
                                                color:
                                                    ConstColors.primaryColor),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 120, top: 15),
                                            child: FaIcon(
                                              FontAwesomeIcons.arrowRight,
                                              color: ConstColors.secondary,
                                              size: 18,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ActivityDashboard()));
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 163,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            ConstColors.secondary,
                                            ConstColors.primaryColor,
                                          ]),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xffFFFFFF)
                                                .withOpacity(0.72),
                                            blurRadius: 10,
                                            spreadRadius: 0,
                                            offset: Offset(
                                              3,
                                              3,
                                            )),
                                        BoxShadow(
                                            color: Color(0xff032B47)
                                                .withOpacity(0.24),
                                            blurRadius: 40,
                                            spreadRadius: 0,
                                            offset: Offset(0, 20))
                                      ],
                                    ),
                                    child: GestureDetector(
                                      // onTap: (){
                                      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity()));
                                      // },
                                      child: Container(
                                        height: 98,
                                        width: 161,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(19),
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 32,
                                            ),
                                            Text(
                                              "Activities",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontFamily: 'Trial',
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      ConstColors.primaryColor),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 120, top: 15),
                                              child: FaIcon(
                                                FontAwesomeIcons.arrowRight,
                                                color: ConstColors.secondary,
                                                size: 18,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 21,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Prayer_Tracker()));
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 163,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            ConstColors.secondary,
                                            ConstColors.primaryColor,
                                          ]),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xffFFFFFF)
                                                .withOpacity(0.72),
                                            blurRadius: 10,
                                            spreadRadius: 0,
                                            offset: Offset(
                                              3,
                                              3,
                                            )),
                                        BoxShadow(
                                            color: Color(0xff032B47)
                                                .withOpacity(0.24),
                                            blurRadius: 40,
                                            spreadRadius: 0,
                                            offset: Offset(0, 20))
                                      ],
                                    ),
                                    child: Container(
                                      height: 98,
                                      width: 161,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(19),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 33,
                                          ),
                                          Text(
                                            "Prayer Tracker",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: 'Trial',
                                                fontWeight: FontWeight.w500,
                                                color:
                                                    ConstColors.primaryColor),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 120, top: 15),
                                            child: FaIcon(
                                              FontAwesomeIcons.arrowRight,
                                              color: ConstColors.secondary,
                                              size: 18,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 100,
                                  width: 163,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          ConstColors.secondary,
                                          ConstColors.primaryColor,
                                        ]),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.72),
                                          blurRadius: 10,
                                          spreadRadius: 0,
                                          offset: Offset(
                                            3,
                                            3,
                                          )),
                                      BoxShadow(
                                          color: Color(0xff032B47)
                                              .withOpacity(0.24),
                                          blurRadius: 40,
                                          spreadRadius: 0,
                                          offset: Offset(0, 20))
                                    ],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TravelTracker()));
                                    },
                                    child: Container(
                                      height: 98,
                                      width: 161,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(19),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 32,
                                          ),
                                          Text(
                                            "Travel Tracker",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: 'Trial',
                                                fontWeight: FontWeight.w500,
                                                color:
                                                    ConstColors.primaryColor),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 120, top: 15),
                                            child: FaIcon(
                                              FontAwesomeIcons.arrowRight,
                                              color: ConstColors.secondary,
                                              size: 18,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 21,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 100,
                                  width: 163,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          ConstColors.secondary,
                                          ConstColors.primaryColor,
                                        ]),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.72),
                                          blurRadius: 10,
                                          spreadRadius: 0,
                                          offset: Offset(
                                            3,
                                            3,
                                          )),
                                      BoxShadow(
                                          color: Color(0xff032B47)
                                              .withOpacity(0.24),
                                          blurRadius: 40,
                                          spreadRadius: 0,
                                          offset: Offset(0, 20))
                                    ],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Fasting()));
                                    },
                                    child: Container(
                                      height: 98,
                                      width: 161,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(19),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 33,
                                          ),
                                          Text(
                                            "Fasting Tracker",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: 'Trial',
                                                fontWeight: FontWeight.w500,
                                                color:
                                                    ConstColors.primaryColor),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 120, top: 15),
                                            child: FaIcon(
                                              FontAwesomeIcons.arrowRight,
                                              color: ConstColors.secondary,
                                              size: 18,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 100,
                                  width: 163,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          ConstColors.secondary,
                                          ConstColors.primaryColor,
                                        ]),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.72),
                                          blurRadius: 10,
                                          spreadRadius: 0,
                                          offset: Offset(
                                            3,
                                            3,
                                          )),
                                      BoxShadow(
                                          color: Color(0xff032B47)
                                              .withOpacity(0.24),
                                          blurRadius: 40,
                                          spreadRadius: 0,
                                          offset: Offset(0, 20))
                                    ],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  QuranMoon()));
                                    },
                                    child: Container(
                                      height: 98,
                                      width: 161,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(19),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 35,
                                          ),
                                          Text(
                                            "Quran & Moon",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: 'Book',
                                                fontWeight: FontWeight.w500,
                                                color:
                                                    ConstColors.primaryColor),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 120, top: 15),
                                            child: FaIcon(
                                              FontAwesomeIcons.arrowRight,
                                              color: ConstColors.secondary,
                                              size: 18,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 21,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 100,
                                  width: 163,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          ConstColors.secondary,
                                          ConstColors.primaryColor,
                                        ]),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.72),
                                          blurRadius: 10,
                                          spreadRadius: 0,
                                          offset: Offset(
                                            3,
                                            3,
                                          )),
                                      BoxShadow(
                                          color: Color(0xff032B47)
                                              .withOpacity(0.24),
                                          blurRadius: 40,
                                          spreadRadius: 0,
                                          offset: Offset(0, 20))
                                    ],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Notes()));
                                    },
                                    child: Container(
                                      height: 98,
                                      width: 161,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(19),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 33,
                                          ),
                                          Text(
                                            "Notes",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: 'Trial',
                                                fontWeight: FontWeight.w500,
                                                color:
                                                    ConstColors.primaryColor),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 120, top: 15),
                                            child: FaIcon(
                                              FontAwesomeIcons.arrowRight,
                                              color: ConstColors.secondary,
                                              size: 18,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 100,
                                  width: 163,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          ConstColors.secondary,
                                          ConstColors.primaryColor,
                                        ]),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.72),
                                          blurRadius: 10,
                                          spreadRadius: 0,
                                          offset: Offset(
                                            3,
                                            3,
                                          )),
                                      BoxShadow(
                                          color: Color(0xff032B47)
                                              .withOpacity(0.24),
                                          blurRadius: 40,
                                          spreadRadius: 0,
                                          offset: Offset(0, 20))
                                    ],
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Reports()));
                                    },
                                    child: Container(
                                      height: 98,
                                      width: 161,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(19),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 32,
                                          ),
                                          Text(
                                            "Reports",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: 'Trial',
                                                fontWeight: FontWeight.w500,
                                                color:
                                                    ConstColors.primaryColor),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 120, top: 15),
                                            child: FaIcon(
                                              FontAwesomeIcons.arrowRight,
                                              color: ConstColors.secondary,
                                              size: 18,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else
            return CupertinoActivityIndicator();
        });
  }
}
