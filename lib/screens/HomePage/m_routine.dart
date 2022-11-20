import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhasebe_app/Components/text_theme.dart';
import 'package:muhasebe_app/Components/users.dart';
import 'package:muhasebe_app/screens/HomePage/edit_m_routine.dart';

import '../../Components/ConstColors.dart';
import '../../Components/validator.dart';
import '../DrawerScreens/Home.dart';
import '../DrawerScreens/account.dart';
import '../DrawerScreens/activity_dashboard.dart';
import '../Main/Home2.dart';
import '../Main/activity.dart';

class Routine extends StatefulWidget {
  const Routine({Key? key}) : super(key: key);

  @override
  State<Routine> createState() => _RoutineState();
}

class _RoutineState extends State<Routine> {
  String getTitle = "";
  TextEditingController _title = TextEditingController();

  var scaffoldKey = GlobalKey<ScaffoldState>();
  List dropDownlistData = [
    {"title": "In Prog.", "value": "2"},
    {"title": "On Hold", "value": "3"},
  ];
  String defaultvalue = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
          width: 270,
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
                "Morning Routine",
                style: AppTextTheme.titles,
              ),
              StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).collection('Morning Routine').snapshots(),
                  builder: (context,snapshot){
                    if(snapshot.connectionState == ConnectionState.waiting){
                      return CupertinoActivityIndicator();
                    }else if(snapshot.data!.docs.isNotEmpty){
                      return Padding(padding: EdgeInsets.only(left: 25, right: 25, top: 30),
                      child:Container(
                        height: 350,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xff3290FF), width: 2),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xff000000).withOpacity(0.10),
                                  offset: Offset(0, 2),
                                  blurRadius: 2,
                                  spreadRadius: 4)
                            ]),
                        child: SingleChildScrollView(
                          child: DataTable(
                              horizontalMargin: 10,
                              columnSpacing: 35,

                              // headingRowColor:
                              // MaterialStateColor.resolveWith((states) => Colors.blue),
                              columns: [
                                DataColumn(
                                    label: Text(
                                      "Title",
                                      style: TextStyle(
                                          fontFamily: 'Trial',
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: ConstColors.primaryColor),
                                    )),
                                DataColumn(
                                    label: Text(
                                      "Status",
                                      style: TextStyle(
                                          fontFamily: 'Trial',
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: ConstColors.primaryColor),
                                    )),
                                DataColumn(
                                    label: Text(
                                      "Actions",
                                      style: TextStyle(
                                          fontFamily: 'Trial',
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: ConstColors.primaryColor),
                                    )),
                              ],
                              rows:_buildList(context, snapshot.data!.docs)
                          ),
                        ),
                      ),
                      );
                    }else {
                      return Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
                        child: Container(
                          height: 350,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xff3290FF), width: 2),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff000000).withOpacity(0.10),
                                    offset: Offset(0, 2),
                                    blurRadius: 2,
                                    spreadRadius: 4)
                              ]),
                          child: SingleChildScrollView(
                            child: DataTable(horizontalMargin: 10, columnSpacing: 40,

                                // headingRowColor:
                                // MaterialStateColor.resolveWith((states) => Colors.blue),
                                columns: [
                                  DataColumn(
                                      label: Text(
                                        "Title",
                                        style: TextStyle(
                                            fontFamily: 'Trial',
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                            color: ConstColors.primaryColor),
                                      )),
                                  DataColumn(
                                      label: Text(
                                        "Status",
                                        style: TextStyle(
                                            fontFamily: 'Trial',
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                            color: ConstColors.primaryColor),
                                      )),
                                  DataColumn(
                                      label: Text(
                                        "Actions",
                                        style: TextStyle(
                                            fontFamily: 'Trial',
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                            color: ConstColors.primaryColor),
                                      )),
                                ], rows: [
                                  DataRow(cells: [
                                    DataCell(Text(
                                      "Title Name",
                                      style: TextStyle(
                                          fontFamily: 'Trial',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    )),
                                    DataCell(
                                      DropDown(),
                                    ),
                                    DataCell(Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.edit,
                                          color: ConstColors.secondary,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.trashCan,
                                          color: Color(0xffFE0000),
                                          size: 15,
                                        ),
                                      ],
                                    ))
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      "Title Name",
                                      style: TextStyle(
                                          fontFamily: 'Trial',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    )),
                                    DataCell(
                                      DropDown(),
                                    ),
                                    DataCell(Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.edit,
                                          color: ConstColors.secondary,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.trashCan,
                                          color: Color(0xffFE0000),
                                          size: 15,
                                        ),
                                      ],
                                    ))
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      "Title Name",
                                      style: TextStyle(
                                          fontFamily: 'Trial',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    )),
                                    DataCell(
                                      DropDown(),
                                    ),
                                    DataCell(Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.edit,
                                          color: ConstColors.secondary,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.trashCan,
                                          color: Color(0xffFE0000),
                                          size: 15,
                                        ),
                                      ],
                                    ))
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      "Title Name",
                                      style: TextStyle(
                                          fontFamily: 'Trial',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    )),
                                    DataCell(
                                      DropDown(),
                                    ),
                                    DataCell(Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.edit,
                                          color: ConstColors.secondary,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.trashCan,
                                          color: Color(0xffFE0000),
                                          size: 15,
                                        ),
                                      ],
                                    ))
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      "Title Name",
                                      style: TextStyle(
                                          fontFamily: 'Trial',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    )),
                                    DataCell(
                                      DropDown(),
                                    ),
                                    DataCell(Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.edit,
                                          color: ConstColors.secondary,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.trashCan,
                                          color: Color(0xffFE0000),
                                          size: 15,
                                        ),
                                      ],
                                    ))
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      "Title Name",
                                      style: TextStyle(
                                          fontFamily: 'Trial',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    )),
                                    DataCell(
                                      DropDown(),
                                    ),
                                    DataCell(Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.edit,
                                          color: ConstColors.secondary,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.trashCan,
                                          color: Color(0xffFE0000),
                                          size: 15,
                                        ),
                                      ],
                                    ))
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      "Title Name",
                                      style: TextStyle(
                                          fontFamily: 'Trial',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    )),
                                    DataCell(
                                      DropDown(),
                                    ),
                                    DataCell(Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.edit,
                                          color: ConstColors.secondary,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.trashCan,
                                          color: Color(0xffFE0000),
                                          size: 15,
                                        ),
                                      ],
                                    ))
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      "Title Name",
                                      style: TextStyle(
                                          fontFamily: 'Trial',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    )),
                                    DataCell(
                                      DropDown(),
                                    ),
                                    DataCell(Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.edit,
                                          color: ConstColors.secondary,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.trashCan,
                                          color: Color(0xffFE0000),
                                          size: 15,
                                        ),
                                      ],
                                    ))
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      "Title Name",
                                      style: TextStyle(
                                          fontFamily: 'Trial',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    )),
                                    DataCell(
                                      DropDown(),
                                    ),
                                    DataCell(Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.edit,
                                          color: ConstColors.secondary,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.trashCan,
                                          color: Color(0xffFE0000),
                                          size: 15,
                                        ),
                                      ],
                                    ))
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      "Title Name",
                                      style: TextStyle(
                                          fontFamily: 'Trial',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    )),
                                    DataCell(
                                      DropDown(),
                                    ),
                                    DataCell(Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.edit,
                                          color: ConstColors.secondary,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.trashCan,
                                          color: Color(0xffFE0000),
                                          size: 15,
                                        ),
                                      ],
                                    ))
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      "Title Name",
                                      style: TextStyle(
                                          fontFamily: 'Trial',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    )),
                                    DataCell(
                                      DropDown(),
                                    ),
                                    DataCell(Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.edit,
                                          color: ConstColors.secondary,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.trashCan,
                                          color: Color(0xffFE0000),
                                          size: 15,
                                        ),
                                      ],
                                    ))
                                  ]),


                                ]),
                          ),
                        ),
                      );
                    }
                  }),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enter Your New Routine",
                    style: TextStyle(
                        fontFamily: 'CodeNext-Trial',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: ConstColors.primaryColor),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 27, right: 27, top: 29),
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
                        controller: _title,
                        maxLines: 1,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(15),
                        ],
                        cursorColor: Colors.black54,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          hintText: "Have Breakfast by 8 am",
                          hintStyle: AppTextTheme.hintTxt,
                          contentPadding: EdgeInsets.only(bottom: 10, left: 10),
                          border: InputBorder.none,
                        ),
                        validator: (value) {
                          Validator.validateField(value: value!);
                          getTitle = value;
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 121, right: 121),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                    child: GestureDetector(
                      onTap: ()async{
                        if(_title.text.isEmpty){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                color: ConstColors.background.withOpacity(0.70),
                                border: Border.all(color: ConstColors.primaryColor),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Error",
                                      style: TextStyle(
                                          color: ConstColors.primaryColor,
                                          fontFamily: 'Bold',
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Enter Your Routine",
                                      style: TextStyle(
                                          color: ConstColors.primaryColor,
                                          fontFamily: 'Book',
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            behavior: SnackBarBehavior.floating,
                            duration: Duration(seconds: 2),
                            margin: EdgeInsets.only(
                                bottom: MediaQuery.of(context).size.height - 190,
                                right: 20,
                                left: 20),
                          ));
                        }else{
                          try{
                            await Users.addM_routine(Title: getTitle);
                            _title.clear();
                          }catch(e){
                            print(e);
                          }
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        height: 38,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Add',
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
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List dropDownlistData = [
    {"title": "In Progress", "value": "2"},
    {"title": "On Hold", "value": "3"},
  ];
  String defaultvalue = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      width: 90,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color:Color(0xff3290FF),width: 1),
          borderRadius: BorderRadius.circular(30)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          iconSize: 15,
            iconDisabledColor: Colors.black,
            iconEnabledColor: Colors.black,
            isExpanded: true,
            isDense: true,
            value: defaultvalue,
            onChanged: (value) {
              setState(() {
                print("selected value $value");
                defaultvalue = value!;
              });
            },
            items: [
              DropdownMenuItem(
                child: Padding(
                  padding:
                  const EdgeInsets.only(left: 5),
                  child: Text(
                    "Done",
                    style: TextStyle(
                        fontFamily: 'Trial',
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),),
                ),
                value: "",
              ),
              ...dropDownlistData
                  .map<DropdownMenuItem<String>>(
                      (data) {
                    return DropdownMenuItem<String>(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 5),
                          child: Text(
                            data['title'],
                            style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),                                  ),
                        ),
                        value: data['value']);
                  }).toList(),
            ]),
      ),
    );
  }
}

List<DataRow> _buildList(
    BuildContext context, List<DocumentSnapshot> snapshot) {
  return snapshot.map((data) => _buildListItem(context, data)).toList();
}

DataRow _buildListItem(BuildContext context, DocumentSnapshot data) {
  // final Users = users.fromSnapshot(data);
  return  DataRow(cells: [
    DataCell(Text(
      data['title'],
      style: TextStyle(
          fontFamily: 'Book',
          fontSize: 12,
          fontWeight: FontWeight.w600),
    )),
    DataCell(
      DropDown(),
    ),
    DataCell(Row(
      children: [
        GestureDetector(
        onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>EditMRoutine(
      currentTitle:data['title'],
      currentId:data.id,
    )));
    },
          child: FaIcon(
            FontAwesomeIcons.edit,
            color: ConstColors.secondary,
            size: 15,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: ()async{
            await Users.deleteM_routine(docId:data.id );
          },
            child: FaIcon(
              FontAwesomeIcons.trashCan,
              color: Color(0xffFE0000),
              size: 15,
            ),
          ),
      ],
    ))
  ]);
}
