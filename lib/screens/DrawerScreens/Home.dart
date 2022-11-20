import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muhasebe_app/Components/ConstColors.dart';
import 'package:muhasebe_app/screens/HomePage/virtue_add.dart';
import 'package:muhasebe_app/screens/HomePage/vises_delete.dart';
import 'package:muhasebe_app/screens/Main/Home2.dart';
import '../HomePage/Goals.dart';
import '../HomePage/addcatogaries.dart';
import '../HomePage/daily_reflection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../HomePage/m_routine.dart';
import 'account.dart';
import 'activity_dashboard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedindex = -1;
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
                height: 27,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 28,
                  ),
                  Text(
                    "Personalize",
                    style: TextStyle(
                        fontFamily: 'Trial',
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 28,
                  ),
                  Text(
                    "Let Your App Know Your Preferences",
                    style: TextStyle(
                        fontFamily: 'Trial',
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('users')
                      .doc(FirebaseAuth.instance.currentUser!.uid)
                      .collection('image').orderBy('userImage',descending: true)
                      .snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CupertinoActivityIndicator();
                    } else if (snapshot.data!.docs.isNotEmpty) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 110),
                        child: Container(
                          height: 150,
                          child: ListView.builder(
                              itemCount: 1,
                              itemBuilder: (context, index) {
                                return Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0, right: 0),
                                      child: Container(
                                        width: 140,
                                        height: 140,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Color(0xff587CA7)
                                                      .withOpacity(0.31),
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
                                          padding: const EdgeInsets.only(
                                              left: 0, right: 0),
                                          child: Container(
                                            width: 138,
                                            height: 138,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                            alignment: Alignment.center,
                                            child: Container(
                                              height: 140,
                                              width: 140,
                                              child: CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                      snapshot.data!.docs[index]
                                                          ['userImage'])),
                                            ),
                                            // child: FaIcon(
                                            //   FontAwesomeIcons.user,
                                            //   color: ConstColors.primaryColor,
                                            //   size: 70,
                                            // )),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        ),
                      );
                    } else {
                      return  Container(
                        width: 148,
                        height: 148,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xff587CA7)
                                      .withOpacity(0.31),
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
                          padding: const EdgeInsets.only(
                              left: 0, right: 0),
                          child: Container(
                            width: 146,
                            height: 146,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            alignment: Alignment.center,
                            child: Container(
                              height: 140,
                              width: 140,
                              child: Image.asset('assets/images/user1.png')
                              ),
                            ),
                            // child: FaIcon(
                            //   FontAwesomeIcons.user,
                            //   color: ConstColors.primaryColor,
                            //   size: 70,
                            // )),
                          ),
                        );
                    }
                  }
                  ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Goals()));
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
                              color: Color(0xffFFFFFF).withOpacity(0.72),
                              blurRadius: 10,
                              spreadRadius: 0,
                              offset: Offset(
                                3,
                                3,
                              )),
                          BoxShadow(
                              color: Color(0xff032B47).withOpacity(0.24),
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
                            "Goals",
                            style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Trial',
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 120, top: 20),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddCatogaries()));
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
                              color: Color(0xffFFFFFF).withOpacity(0.72),
                              blurRadius: 10,
                              spreadRadius: 0,
                              offset: Offset(
                                3,
                                3,
                              )),
                          BoxShadow(
                              color: Color(0xff032B47).withOpacity(0.24),
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
                              height: 30,
                            ),
                            Text(
                              "Categories",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'Trial',
                                  fontWeight: FontWeight.w500,
                                  color: ConstColors.primaryColor),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 120, top: 20),
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
              SizedBox(
                height: 21,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Routine()));
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
                              color: Color(0xffFFFFFF).withOpacity(0.72),
                              blurRadius: 10,
                              spreadRadius: 0,
                              offset: Offset(
                                3,
                                3,
                              )),
                          BoxShadow(
                              color: Color(0xff032B47).withOpacity(0.24),
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
                              height: 25,
                            ),
                            Text(
                              "Morning \nRoutines",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'Trial',
                                  fontWeight: FontWeight.w500,
                                  color: ConstColors.primaryColor),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 120, top: 3),
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
                            color: Color(0xffFFFFFF).withOpacity(0.72),
                            blurRadius: 10,
                            spreadRadius: 0,
                            offset: Offset(
                              3,
                              3,
                            )),
                        BoxShadow(
                            color: Color(0xff032B47).withOpacity(0.24),
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
                                builder: (context) => DailyReflection()));
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
                              "      Daily \nReflections",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'Book',
                                  fontWeight: FontWeight.w500,
                                  color: ConstColors.primaryColor),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 120, top: 3),
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
              SizedBox(
                height: 21,
              ),
              Row(
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
                            color: Color(0xffFFFFFF).withOpacity(0.72),
                            blurRadius: 10,
                            spreadRadius: 0,
                            offset: Offset(
                              3,
                              3,
                            )),
                        BoxShadow(
                            color: Color(0xff032B47).withOpacity(0.24),
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
                                builder: (context) => VirtueAdd()));
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
                              "Healthy Habits",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'Trial',
                                  fontWeight: FontWeight.w500,
                                  color: ConstColors.primaryColor),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 120, top: 20),
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
                            color: Color(0xffFFFFFF).withOpacity(0.72),
                            blurRadius: 10,
                            spreadRadius: 0,
                            offset: Offset(
                              3,
                              3,
                            )),
                        BoxShadow(
                            color: Color(0xff032B47).withOpacity(0.24),
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
                                builder: (context) => VisesDelete()));
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
                              "Affirmation",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'Book',
                                  fontWeight: FontWeight.w500,
                                  color: ConstColors.primaryColor),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 120, top: 20),
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
              SizedBox(
                height: 21,
              ),
              // StreamBuilder<QuerySnapshot>(
              //     stream: FirebaseFirestore.instance
              //         .collection('home tabs')
              //         .snapshots(),
              //     builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              //       return Padding(
              //         padding: const EdgeInsets.only(left: 12, right: 12),
              //         child: Container(
              //           height: 700,
              //           child: GridView.builder(
              //               gridDelegate:
              //                   SliverGridDelegateWithFixedCrossAxisCount(
              //                       crossAxisSpacing: 12,
              //                       childAspectRatio: 1.6,
              //                       mainAxisSpacing: 15,
              //                       crossAxisCount: 2),
              //               itemCount: snapshot.data!.docs.length,
              //               itemBuilder: (context, index) {
              //                 return GestureDetector(
              //                   onTap: (){
              //                     setState(() {
              //                       selectedindex = index;
              //                     });
              //                   },
              //                   child: Container(
              //                     height: 98,
              //                     width: 161,
              //                     decoration: BoxDecoration(
              //                         gradient: LinearGradient(
              //                         begin: Alignment.topCenter,
              //                         end: Alignment.bottomCenter,
              //                         colors: [
              //                           selectedindex==index?ConstColors.secondary:Colors.white,
              //                           selectedindex==index?ConstColors.primaryColor:Colors.white,
              //                         ]),
              //                         borderRadius: BorderRadius.circular(19),
              //                         boxShadow: [
              //                           BoxShadow(
              //                               color: Color(0xffFFFFFF)
              //                                   .withOpacity(0.72),
              //                               blurRadius: 10,
              //                               spreadRadius: 0,
              //                               offset: Offset(
              //                                 3,
              //                                 3,
              //                               )),
              //                           BoxShadow(
              //                               color: Color(0xff032B47)
              //                                   .withOpacity(0.24),
              //                               blurRadius: 40,
              //                               spreadRadius: 0,
              //                               offset: Offset(0, 20))
              //                         ],
              //                         border: Border.all(
              //                             color: ConstColors.primaryColor)),
              //                     child: Column(
              //                       children: [
              //                         SizedBox(
              //                           height: 35,
              //                         ),
              //                         Text(
              //                           snapshot.data!.docs[index]['name'],
              //                           style: TextStyle(
              //                               fontSize: 17,
              //                               fontFamily: 'Book',
              //                               fontWeight: FontWeight.w500,
              //                               color: selectedindex==index?Colors.white:ConstColors.primaryColor),
              //                         ),
              //                         Padding(
              //                           padding: const EdgeInsets.only(
              //                               left: 120, top: 20),
              //                           child: FaIcon(
              //                             FontAwesomeIcons.arrowRight,
              //                             color: selectedindex==index?Colors.white:ConstColors.secondary,
              //                             size: 18,
              //                           ),
              //                         )
              //                       ],
              //                     ),
              //                   ),
              //                 );
              //               }),
              //         ),
              //       );
              //     })
            ],
          ),
        ),
      ),
    );
  }
}
