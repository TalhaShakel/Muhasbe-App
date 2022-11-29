import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muhasebe_app/Components/ConstColors.dart';
import 'package:muhasebe_app/Components/text_theme.dart';
import 'package:muhasebe_app/screens/Main/additional_prayers.dart';
import '../DrawerScreens/Home.dart';
import '../DrawerScreens/account.dart';
import '../DrawerScreens/activity_dashboard.dart';
import 'Home2.dart';

class Prayer_Tracker extends StatefulWidget {
  const Prayer_Tracker({Key? key}) : super(key: key);
  @override
  State<Prayer_Tracker> createState() => _Prayer_TrackerState();
}

class _Prayer_TrackerState extends State<Prayer_Tracker> {
  DateTime _datetime = DateTime.now();
  TextEditingController _prayer = TextEditingController();
  TextEditingController _catogaryno = TextEditingController();
  TextEditingController _nafal = TextEditingController();
  TextEditingController _nafalno = TextEditingController();
  var scaffoldKey = GlobalKey<ScaffoldState>();
  void _showdatepicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030),
        builder: (context, child) {
          return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: ColorScheme.light(
                    primary: ConstColors.primaryColor,
                    secondary: ConstColors.primaryColor,
                    onSecondary: Colors.white),
                textButtonTheme: TextButtonThemeData(
                    style: TextButton.styleFrom(
                  primary: ConstColors.primaryColor,
                )),
                textTheme: TextTheme(
                  headline1: TextStyle(fontFamily: 'Trial'),
                  overline: TextStyle(fontFamily: 'Trial'),
                  button: TextStyle(fontFamily: 'Trial'),
                ),
              ),
              child: child!);
        }).then((value) {
      setState(() {
        _datetime = value!;
      });
    });
  }

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
        ),
        preferredSize: Size.fromHeight(70.0),
      ),
      body: Stack(children: [
        Container(
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
                  "Prayer Tracker",
                  style: AppTextTheme.titles,
                ),
                Padding(
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
                      child: DataTable(horizontalMargin: 15, columnSpacing: 40,
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
                              "Sunnat",
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
                          ], rows: [
                        DataRow(cells: [
                          DataCell(Text(
                            "Title Name",
                            style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          )),
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff707683)),
                            ),
                          )),
                          DataCell(Container(
                            height: 22,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Color(0xff3290FF),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Done",
                                  style: TextStyle(
                                      fontFamily: 'Trial',
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                PopupMenuButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0))),
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    itemBuilder: (context) => [
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Done",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: Colors.green,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 1,
                                          ),
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Pending",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: ConstColors
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 2,
                                          ),
                                        ]),
                              ],
                            ),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                            "Title Name",
                            style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          )),
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff707683)),
                            ),
                          )),
                          DataCell(Container(
                            height: 22,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Color(0xff3290FF),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Done",
                                  style: TextStyle(
                                      fontFamily: 'Trial',
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                PopupMenuButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0))),
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    itemBuilder: (context) => [
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Done",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: Colors.green,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 1,
                                          ),
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Pending",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: ConstColors
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 2,
                                          ),
                                        ]),
                              ],
                            ),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                            "Title Name",
                            style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          )),
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff707683)),
                            ),
                          )),
                          DataCell(Container(
                            height: 22,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Color(0xff3290FF),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Done",
                                  style: TextStyle(
                                      fontFamily: 'Trial',
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                PopupMenuButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0))),
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    itemBuilder: (context) => [
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Done",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: Colors.green,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 1,
                                          ),
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Pending",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: ConstColors
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 2,
                                          ),
                                        ]),
                              ],
                            ),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                            "Title Name",
                            style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          )),
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff707683)),
                            ),
                          )),
                          DataCell(Container(
                            height: 22,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Color(0xff3290FF),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Done",
                                  style: TextStyle(
                                      fontFamily: 'Trial',
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                PopupMenuButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0))),
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    itemBuilder: (context) => [
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Done",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: Colors.green,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 1,
                                          ),
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Pending",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: ConstColors
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 2,
                                          ),
                                        ]),
                              ],
                            ),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                            "Title Name",
                            style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          )),
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff707683)),
                            ),
                          )),
                          DataCell(Container(
                            height: 22,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Color(0xff3290FF),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Done",
                                  style: TextStyle(
                                      fontFamily: 'Trial',
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                PopupMenuButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0))),
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    itemBuilder: (context) => [
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Done",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: Colors.green,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 1,
                                          ),
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Pending",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: ConstColors
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 2,
                                          ),
                                        ]),
                              ],
                            ),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                            "Title Name",
                            style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          )),
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff707683)),
                            ),
                          )),
                          DataCell(Container(
                            height: 22,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Color(0xff3290FF),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Done",
                                  style: TextStyle(
                                      fontFamily: 'Trial',
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                PopupMenuButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0))),
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    itemBuilder: (context) => [
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Done",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: Colors.green,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 1,
                                          ),
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Pending",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: ConstColors
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 2,
                                          ),
                                        ]),
                              ],
                            ),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                            "Title Name",
                            style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          )),
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff707683)),
                            ),
                          )),
                          DataCell(Container(
                            height: 22,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Color(0xff3290FF),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Done",
                                  style: TextStyle(
                                      fontFamily: 'Trial',
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                PopupMenuButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0))),
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    itemBuilder: (context) => [
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Done",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: Colors.green,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 1,
                                          ),
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Pending",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: ConstColors
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 2,
                                          ),
                                        ]),
                              ],
                            ),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                            "Title Name",
                            style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          )),
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff707683)),
                            ),
                          )),
                          DataCell(Container(
                            height: 22,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Color(0xff3290FF),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Done",
                                  style: TextStyle(
                                      fontFamily: 'Trial',
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                PopupMenuButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0))),
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    itemBuilder: (context) => [
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Done",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: Colors.green,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 1,
                                          ),
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Pending",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: ConstColors
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 2,
                                          ),
                                        ]),
                              ],
                            ),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                            "Title Name",
                            style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          )),
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff707683)),
                            ),
                          )),
                          DataCell(Container(
                            height: 22,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Color(0xff3290FF),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Done",
                                  style: TextStyle(
                                      fontFamily: 'Trial',
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                PopupMenuButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0))),
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    itemBuilder: (context) => [
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Done",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: Colors.green,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 1,
                                          ),
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Pending",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: ConstColors
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 2,
                                          ),
                                        ]),
                              ],
                            ),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                            "Title Name",
                            style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          )),
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff707683)),
                            ),
                          )),
                          DataCell(Container(
                            height: 22,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Color(0xff3290FF),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Done",
                                  style: TextStyle(
                                      fontFamily: 'Trial',
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                PopupMenuButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0))),
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    itemBuilder: (context) => [
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Done",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: Colors.green,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 1,
                                          ),
                                          PopupMenuItem(
                                            child: Container(
                                              child: Center(
                                                child: Text(
                                                  "Pending",
                                                  style: TextStyle(
                                                      fontFamily: 'Trial',
                                                      fontSize: 13,
                                                      color: ConstColors
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            value: 2,
                                          ),
                                        ]),
                              ],
                            ),
                          )),
                        ]),
                      ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Additional Prayers",
                      style: TextStyle(
                          fontFamily: 'codeNext-Trial',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: ConstColors.primaryColor),
                    ),
                    Spacer(),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: ConstColors.secondary)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: ConstColors.secondary,
                            size: 17,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      child: Container(
                        width: 240,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4)),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                              color: Colors.white,
                            ),
                            alignment: Alignment.center,
                            child: TextFormField(
                              controller: _prayer,
                              cursorColor: Colors.black54,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                hintText: "Tahajjud",
                                // suffixIcon: Icon(Icons.arrow_drop_down),
                                hintStyle: AppTextTheme.hintTxt,
                                contentPadding:
                                    EdgeInsets.only(bottom: 10, left: 10),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      child: Container(
                        width: 36,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4)),
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
                            width: 35,
                            height: 38,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                              color: Colors.white,
                            ),
                            alignment: Alignment.center,
                            child: TextFormField(
                              controller: _catogaryno,
                              cursorColor: Colors.black54,
                              keyboardType: TextInputType.number,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                hintText: "2",
                                // suffixIcon: Icon(Icons.arrow_drop_down),
                                hintStyle: AppTextTheme.hintTxt,
                                contentPadding:
                                    EdgeInsets.only(bottom: 10, left: 13),
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
                    FaIcon(
                      FontAwesomeIcons.trashCan,
                      color: Color(0xffFE0000),
                      size: 15,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      child: Container(
                        width: 240,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4)),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                              color: Colors.white,
                            ),
                            alignment: Alignment.center,
                            child: TextFormField(
                              controller: _nafal,
                              cursorColor: Colors.black54,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                hintText: "Nafal",
                                // suffixIcon: Icon(Icons.arrow_drop_down),
                                hintStyle: AppTextTheme.hintTxt,
                                contentPadding:
                                    EdgeInsets.only(bottom: 10, left: 10),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      child: Container(
                        width: 36,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4)),
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
                            width: 35,
                            height: 38,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                              color: Colors.white,
                            ),
                            alignment: Alignment.center,
                            child: TextFormField(
                              controller: _nafalno,
                              cursorColor: Colors.black54,
                              keyboardType: TextInputType.number,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                hintText: "2",
                                // suffixIcon: Icon(Icons.arrow_drop_down),
                                hintStyle: AppTextTheme.hintTxt,
                                contentPadding:
                                    EdgeInsets.only(bottom: 10, left: 13),
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
                    FaIcon(
                      FontAwesomeIcons.trashCan,
                      color: Color(0xffFE0000),
                      size: 15,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Additional()));
                  },
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
                  height: 75,
                ),
              ],
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: 60,
              color: ConstColors.primaryColor,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                      onTap: _showdatepicker,
                      child: FaIcon(
                        FontAwesomeIcons.calendar,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "${_datetime.day.toString()} ",
                      style: TextStyle(
                          fontFamily: 'Book',
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "/ ${_datetime.month.toString()} ",
                      style: TextStyle(
                          fontFamily: 'Book',
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "/ ${_datetime.year.toString()}",
                      style: TextStyle(
                          fontFamily: 'Book',
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Total : 54",
                    style: TextStyle(
                      fontFamily: 'CodeNext-Trial',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
