import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhasebe_app/Components/text_theme.dart';
import 'package:muhasebe_app/screens/Main/quran_moon.dart';

import '../../Components/ConstColors.dart';
import '../DrawerScreens/Home.dart';
import '../DrawerScreens/account.dart';
import '../DrawerScreens/activity_dashboard.dart';
import '../Main/Home2.dart';
import '../Main/activity.dart';

class DailyReflection extends StatefulWidget {
  const DailyReflection({Key? key}) : super(key: key);

  @override
  State<DailyReflection> createState() => _DailyReflectionState();
}

enum Data {
  yes,
}

enum Val {
  no,
}

enum A {
  a,
}

enum B {
  b,
}

enum C {
  c,
}

enum D {
  d,
}

enum E {
  e,
}

enum F {
  f,
}

enum G {
  g,
}

enum H {
  h,
}

enum I {
  i,
}

enum J {
  j,
}

class _DailyReflectionState extends State<DailyReflection> {
  TextEditingController _achievments = TextEditingController();
  TextEditingController _toimprove = TextEditingController();
  Data? _data;
  Val? _val;
  A? _a;
  B? _b;
  C? _c;
  D? _d;
  E? _e;
  F? _f;
  G? _g;
  H? _h;
  I? _i;
  J? _j;

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                      color:
                                          Color(0xffBBC3CE).withOpacity(0.60),
                                      blurRadius: 12,
                                      spreadRadius: 0,
                                      offset: Offset(
                                        4,
                                        4,
                                      )),
                                  BoxShadow(
                                      color:
                                          Color(0xffFDFFFF).withOpacity(0.80),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 55,
                                ),
                                Text(
                                  "Shahid Saeed",
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home2()));
                },
                child: ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.house,
                    color: ConstColors.primaryColor,
                    size: 20,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(fontSize: 16, fontFamily: 'Trial'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Account()));
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
                      context, MaterialPageRoute(builder: (context) => Home()));
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
                    style: TextStyle(fontSize: 16, fontFamily: 'Trial'),
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
          decoration:
              BoxDecoration(color: ConstColors.primaryColor, boxShadow: [
            BoxShadow(
                color: Color(0xff000000).withOpacity(0.10),
                blurRadius: 10,
                spreadRadius: 0,
                offset: Offset(5, 5))
          ]),
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
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
                            shape: BoxShape.circle, color: Colors.white),
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
                        "User Name",
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
                      Text(
                        "29, Sep, 2022",
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Trial',
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Hijri : Shaban 23",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Trial',
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
        preferredSize: Size.fromHeight(70.0),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: ConstColors.background,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Daily Reflection",
                style: TextStyle(
                    fontSize: 28,
                    color: ConstColors.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Bold'),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "“This is the description of Mantra 1”",
                style: TextStyle(
                    fontFamily: 'Trial',
                    fontSize: 12,
                    color: Color(0xff828282)),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 36,
                  ),
                  Text(
                    "Achievements",
                    style: AppTextTheme.labels,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff587CA7).withOpacity(0.31),
                            blurRadius: 22,
                            spreadRadius: 0,
                            offset: Offset(
                              6,
                              6,
                            )),
                        BoxShadow(
                            color: Color(0xffFFFFFF),
                            blurRadius: 20,
                            spreadRadius: 0,
                            offset: Offset(-4, -4))
                      ],
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            ConstColors.secondary,
                            ConstColors.primaryColor,
                          ])),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 1, right: 1),
                    child: Container(
                      width: double.infinity,
                      height: 38,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: TextFormField(
                        controller: _achievments,
                        cursorColor: Colors.black54,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          hintText: "Achievements",
                          hintStyle: AppTextTheme.hintTxt,
                          contentPadding: EdgeInsets.only(bottom: 10, left: 10),
                          border: InputBorder.none,
                        ),
                        // validator: (vaL) {
                        //   return vaL!.isEmpty ? "Please Enter Name" : null;
                        // },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 36,
                  ),
                  Text(
                    "To Improve",
                    style: AppTextTheme.labels,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff587CA7).withOpacity(0.31),
                            blurRadius: 22,
                            spreadRadius: 0,
                            offset: Offset(
                              6,
                              6,
                            )),
                        BoxShadow(
                            color: Color(0xffFFFFFF),
                            blurRadius: 20,
                            spreadRadius: 0,
                            offset: Offset(-4, -4))
                      ],
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            ConstColors.secondary,
                            ConstColors.primaryColor,
                          ])),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 1, right: 1),
                    child: Container(
                      width: double.infinity,
                      height: 38,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: TextFormField(
                        controller: _toimprove,
                        cursorColor: Colors.black54,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          hintText: "To Improve",
                          hintStyle: AppTextTheme.hintTxt,
                          contentPadding: EdgeInsets.only(bottom: 10, left: 10),
                          border: InputBorder.none,
                        ),
                        // validator: (vaL) {
                        //   return vaL!.isEmpty ? "Please Enter Name" : null;
                        // },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Container(
                  width: double.infinity,
                  height: 189,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff587CA7).withOpacity(0.31),
                            blurRadius: 22,
                            spreadRadius: 0,
                            offset: Offset(
                              6,
                              6,
                            )),
                        BoxShadow(
                            color: Color(0xffFFFFFF),
                            blurRadius: 20,
                            spreadRadius: 0,
                            offset: Offset(-4, -4))
                      ],
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            ConstColors.secondary,
                            ConstColors.primaryColor,
                          ])),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 1, right: 1),
                    child: Container(
                      // width: double.infinity,
                      height: 187,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15,top: 8,bottom: 8),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Healthy Habits",
                                style: TextStyle(
                                    fontFamily: 'Trial',
                                    fontSize: 20,
                                    color: ConstColors.primaryColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              Row(
                                children: [
                                  // SizedBox(
                                  //   width: 5,
                                  // ),
                                  Radio(
                                      value: A.a,
                                      activeColor: ConstColors.primaryColor,
                                      groupValue: _a,
                                      toggleable: true,
                                      onChanged: (A? value) {
                                        setState(() {
                                          _a = value;
                                        });
                                      }),
                                  Text(
                                    "Sleep 8 Hours",
                                    style: TextStyle(
                                        fontFamily: 'Trial',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff113A62)),
                                  ),
                                  Radio(
                                      value: B.b,
                                      activeColor: ConstColors.primaryColor,
                                      groupValue: _b,
                                      toggleable: true,
                                      onChanged: (B? value) {
                                        setState(() {
                                          _b = value;
                                        });
                                      }),
                                  Text(
                                    "Eat Salad Daily",
                                    style: TextStyle(
                                        fontFamily: 'Trial',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff113A62)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              Row(
                                children: [
                                  // SizedBox(
                                  //   width: 5,
                                  // ),
                                  Radio(
                                      value: C.c,
                                      activeColor: ConstColors.primaryColor,
                                      groupValue: _c,
                                      toggleable: true,
                                      onChanged: (C? value) {
                                        setState(() {
                                          _c = value;
                                        });
                                      }),
                                  Text(
                                    "Sleep 8 Hours",
                                    style: TextStyle(
                                        fontFamily: 'Trial',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff113A62)),
                                  ),
                                  Radio(
                                      value: D.d,
                                      activeColor: ConstColors.primaryColor,
                                      groupValue: _d,
                                      toggleable: true,
                                      onChanged: (D? value) {
                                        setState(() {
                                          _d = value;
                                        });
                                      }),
                                  Text(
                                    "Eat Salad Daily",
                                    style: TextStyle(
                                        fontFamily: 'Trial',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff113A62)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              Row(
                                children: [
                                  // SizedBox(
                                  //   width: 5,
                                  // ),
                                  Radio(
                                      value: E.e,
                                      activeColor: ConstColors.primaryColor,
                                      groupValue: _e,
                                      toggleable: true,
                                      onChanged: (E? value) {
                                        setState(() {
                                          _e = value;
                                        });
                                      }),
                                  Text(
                                    "Sleep 8 Hours",
                                    style: TextStyle(
                                        fontFamily: 'Trial',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff113A62)),
                                  ),
                                  Radio(
                                      value: F.f,
                                      activeColor: ConstColors.primaryColor,
                                      groupValue: _f,
                                      toggleable: true,
                                      onChanged: (F? value) {
                                        setState(() {
                                          _f = value;
                                        });
                                      }),
                                  Text(
                                    "Eat Salad Daily",
                                    style: TextStyle(
                                        fontFamily: 'Trial',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff113A62)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Container(
                  width: double.infinity,
                  height: 189,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff587CA7).withOpacity(0.31),
                            blurRadius: 22,
                            spreadRadius: 0,
                            offset: Offset(
                              6,
                              6,
                            )),
                        BoxShadow(
                            color: Color(0xffFFFFFF),
                            blurRadius: 20,
                            spreadRadius: 0,
                            offset: Offset(-4, -4))
                      ],
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            ConstColors.secondary,
                            ConstColors.primaryColor,
                          ])),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 1, right: 1),
                    child: Container(
                      width: double.infinity,
                      height: 187,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15,top: 8,bottom: 8),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "Affirmation",
                                style: TextStyle(
                                    fontFamily: 'Book',
                                    fontSize: 20,
                                    color: ConstColors.primaryColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  // SizedBox(
                                  //   width: 5,
                                  // ),
                                  Radio(
                                      value: G.g,
                                      activeColor: ConstColors.primaryColor,
                                      groupValue: _g,
                                      toggleable: true,
                                      onChanged: (G? value) {
                                        setState(() {
                                          _g = value;
                                        });
                                      }),
                                  Text(
                                    "Sleep 8 Hours",
                                    style: TextStyle(
                                        fontFamily: 'Trial',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff113A62)),
                                  ),
                                  Radio(
                                      value: H.h,
                                      activeColor: ConstColors.primaryColor,
                                      groupValue: _h,
                                      toggleable: true,
                                      onChanged: (H? value) {
                                        setState(() {
                                          _h = value;
                                        });
                                      }),
                                  Text(
                                    "Eat Salad Daily",
                                    style: TextStyle(
                                        fontFamily: 'Trial',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff113A62)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              Row(
                                children: [
                                  // SizedBox(
                                  //   width: 5,
                                  // ),
                                  Radio(
                                      value: I.i,
                                      activeColor: ConstColors.primaryColor,
                                      groupValue: _i,
                                      toggleable: true,
                                      onChanged: (I? value) {
                                        setState(() {
                                          _i = value;
                                        });
                                      }),
                                  Text(
                                    "Sleep 8 Hours",
                                    style: TextStyle(
                                        fontFamily: 'Trial',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff113A62)),
                                  ),
                                  Radio(
                                      value: J.j,
                                      activeColor: ConstColors.primaryColor,
                                      groupValue: _j,
                                      toggleable: true,
                                      onChanged: (J? value) {
                                        setState(() {
                                          _j = value;
                                        });
                                      }),
                                  Text(
                                    "Eat Salad Daily",
                                    style: TextStyle(
                                        fontFamily: 'Trial',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff113A62)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              Row(
                                children: [
                                  // SizedBox(
                                  //   width: 5,
                                  // ),
                                  Radio(
                                      value: Data.yes,
                                      activeColor: ConstColors.primaryColor,
                                      groupValue: _data,
                                      toggleable: true,
                                      onChanged: (Data? value) {
                                        setState(() {
                                          _data = value;
                                        });
                                      }),
                                  Text(
                                    "Sleep 8 Hours",
                                    style: TextStyle(
                                        fontFamily: 'Trial',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff113A62)),
                                  ),
                                  Radio(
                                      value: Val.no,
                                      activeColor: ConstColors.primaryColor,
                                      groupValue: _val,
                                      toggleable: true,
                                      onChanged: (Val? value) {
                                        setState(() {
                                          _val = value;
                                        });
                                      }),
                                  Text(
                                    "Eat Salad Daily",
                                    style: TextStyle(
                                        fontFamily: 'Trial',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff113A62)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                // onTap: (){
                //   Navigator.push(context, MaterialPageRoute(builder: (context)=>QuranMoon()));
                // },
                child: Padding(
                  padding: const EdgeInsets.only(left: 121, right: 121),
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff587CA7).withOpacity(0.31),
                              blurRadius: 22,
                              spreadRadius: 0,
                              offset: Offset(
                                6,
                                6,
                              )),
                          BoxShadow(
                              color: Color(0xffFFFFFF),
                              blurRadius: 20,
                              spreadRadius: 0,
                              offset: Offset(-4, -4))
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              ConstColors.secondary,
                              ConstColors.primaryColor,
                            ])),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 1, right: 1),
                      child: Container(
                        width: double.infinity,
                        height: 38,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              fontFamily: 'Trial',
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: ConstColors.secondary),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 23,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
