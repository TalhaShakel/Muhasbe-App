import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhasebe_app/Components/text_theme.dart';
import 'package:muhasebe_app/screens/Main/todo_list.dart';
import '../../Components/ConstColors.dart';
import '../Main/Home2.dart';
import '../Main/activity.dart';
import 'Home.dart';
import 'account.dart';

class ActivityDashboard extends StatefulWidget {
  const ActivityDashboard({Key? key}) : super(key: key);
  @override
  State<ActivityDashboard> createState() => _ActivityDashboardState();
}

class _ActivityDashboardState extends State<ActivityDashboard> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
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
                  "Activity Dashboard",
                  style: AppTextTheme.titles,
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Activity()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 75, right: 75),
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
                      child: Text(
                        'Add New Activity',
                        style: TextStyle(
                            fontFamily: 'Trial',
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
                  child: Container(
                    height: 445,
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
                    child: ListView.builder(
                      physics: AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics(),
                      ),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 5,
                            right: 5,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    "Title Name",
                                    style: TextStyle(
                                        fontFamily: 'Trial',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: ConstColors.secondary),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Lorem Ipsum is simply dummy text of the printing and \ntypesetting industry...",
                                  style: TextStyle(
                                      fontFamily: 'Trial',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: ConstColors.primaryColor,
                                      letterSpacing: -0.9),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 22,
                                    width: 87,
                                    decoration: BoxDecoration(
                                        color: Color(0xff3290FF),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          "Not Started",
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          width: 0,
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
                                                          style: GoogleFonts
                                                              .raleway(
                                                                  fontSize: 13,
                                                                  color: Colors
                                                                      .green,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                        ),
                                                      ),
                                                    ),
                                                    value: 1,
                                                  ),
                                                  PopupMenuItem(
                                                    child: Container(
                                                      child: Center(
                                                        child: Text(
                                                          "Not Started",
                                                          style: GoogleFonts.raleway(
                                                              fontSize: 13,
                                                              color: ConstColors
                                                                  .primaryColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                      ),
                                                    ),
                                                    value: 2,
                                                  ),
                                                ]),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TodoList()));
                                    },
                                    child: Text(
                                      ">> ToDo",
                                      style: TextStyle(
                                          fontFamily: 'Book',
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: ConstColors.primaryColor),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
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
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.end,
                              //   children: [
                              //     GestureDetector(
                              //       onTap :()   {
                              //         Navigator.push(
                              //             context,
                              //             MaterialPageRoute(
                              //                 builder: (context) => ActivityDashboard()));
                              //          },child: Text(
                              //         ">> Activity",
                              //         style: TextStyle(
                              //             fontFamily: 'CodeNext-Trial',
                              //             fontSize: 12,
                              //             fontWeight: FontWeight.w600,
                              //             color: ConstColors.primaryColor),
                              //       ),
                              //     ),
                              //     SizedBox(
                              //       width: 10,
                              //     ),
                              //   ],
                              // ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey.shade400,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    // child: DataTable(
                    //     horizontalMargin: 10,
                    //     columnSpacing: 15,
                    //     // headingRowColor:
                    //     // MaterialStateColor.resolveWith((states) => Colors.blue),
                    //     columns:[
                    //   DataColumn(
                    //       label: Text("Sr. No.",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w500,color: ConstColors.primaryColor),)),
                    //   DataColumn(
                    //       label: Text("Title",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w500,color: ConstColors.primaryColor),)),
                    //   DataColumn(
                    //       label: Text("Category",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w500,color: ConstColors.primaryColor),)),
                    //   DataColumn(
                    //       label: Text("Status",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w500,color: ConstColors.primaryColor),)),
                    // ],
                    //
                    //     rows: [
                    //   DataRow(cells: [
                    //     DataCell(Text("1",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //     DataCell(Text("Title Name",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //     DataCell(Text("Charity",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                    //     DataCell(Container(
                    //       height: 22,
                    //       width: 65,
                    //       decoration: BoxDecoration(
                    //         color: Color(0xff3290FF),
                    //         borderRadius: BorderRadius.circular(30)
                    //       ),
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //           Text("Done",style: GoogleFonts.poppins(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w400),),
                    //           SizedBox(width: 5,),
                    //           PopupMenuButton(
                    //               shape: RoundedRectangleBorder(
                    //                   borderRadius:
                    //                   BorderRadius.all(Radius.circular(20.0))),
                    //               child:Icon(Icons.arrow_drop_down,color: Colors.white,size: 15,),
                    //               itemBuilder: (context) => [
                    //                 PopupMenuItem(
                    //                   child: Container(
                    //                     child: Center(
                    //                       child: Text(
                    //                         "Done",
                    //                         style:  GoogleFonts.raleway(
                    //                             fontSize: 13,
                    //                             color: Colors.blue,
                    //                             fontWeight: FontWeight.w500),
                    //                       ),
                    //                     ),
                    //                   ),
                    //                   value: 1,
                    //                 ),
                    //                 PopupMenuItem(
                    //                   child: Container(
                    //                     child: Center(
                    //                       child: Text(
                    //                         "In Progress",
                    //                         style: GoogleFonts.raleway(
                    //                             fontSize: 13,
                    //                             color: ConstColors.primaryColor,
                    //                             fontWeight: FontWeight.w500),
                    //                       ),
                    //                     ),
                    //                   ),
                    //                   value: 2,
                    //                 ),
                    //                 PopupMenuItem(
                    //                   child: Container(
                    //                     child: Center(
                    //                       child: Text(
                    //                         "On Hold",
                    //                         style:  GoogleFonts.raleway(
                    //                             fontSize: 13,
                    //                             color: Color(0xffF40B0B),
                    //                             fontWeight: FontWeight.w500),
                    //                       ),
                    //                     ),
                    //                   ),
                    //                   value: 3,
                    //                 ),
                    //               ]),
                    //         ],
                    //       ),
                    //     )
                    //
                    //     ),
                    //
                    //
                    //   ]),
                    //       DataRow(cells: [
                    //         DataCell(Text("2",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Title Name",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Charity",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                    //         DataCell(Container(
                    //           height: 22,
                    //           width: 65,
                    //           decoration: BoxDecoration(
                    //               color: Color(0xff3290FF),
                    //               borderRadius: BorderRadius.circular(30)
                    //           ),
                    //           child: Row(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               Text("Done",style: GoogleFonts.poppins(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w400),),
                    //               SizedBox(width: 5,),
                    //               PopupMenuButton(
                    //                   shape: RoundedRectangleBorder(
                    //                       borderRadius:
                    //                       BorderRadius.all(Radius.circular(20.0))),
                    //                   child:Icon(Icons.arrow_drop_down,color: Colors.white,size: 15,),
                    //                   itemBuilder: (context) => [
                    //                     PopupMenuItem(
                    //                       child: Container(
                    //                         child: Center(
                    //                           child: Text(
                    //                             "Done",
                    //                             style:  GoogleFonts.raleway(
                    //                                 fontSize: 13,
                    //                                 color: Colors.blue,
                    //                                 fontWeight: FontWeight.w500),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       value: 1,
                    //                     ),
                    //                     PopupMenuItem(
                    //                       child: Container(
                    //                         child: Center(
                    //                           child: Text(
                    //                             "In Progress",
                    //                             style: GoogleFonts.raleway(
                    //                                 fontSize: 13,
                    //                                 color: ConstColors.primaryColor,
                    //                                 fontWeight: FontWeight.w500),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       value: 2,
                    //                     ),
                    //                     PopupMenuItem(
                    //                       child: Container(
                    //                         child: Center(
                    //                           child: Text(
                    //                             "On Hold",
                    //                             style:  GoogleFonts.raleway(
                    //                                 fontSize: 13,
                    //                                 color: Color(0xffF40B0B),
                    //                                 fontWeight: FontWeight.w500),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       value: 3,
                    //                     ),
                    //                   ]),
                    //             ],
                    //           ),
                    //         )
                    //
                    //         ),
                    //
                    //
                    //       ]),
                    //       DataRow(cells: [
                    //         DataCell(Text("3",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Title Name",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Charity",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                    //         DataCell(Container(
                    //           height: 22,
                    //           width: 65,
                    //           decoration: BoxDecoration(
                    //               color: Color(0xff3290FF),
                    //               borderRadius: BorderRadius.circular(30)
                    //           ),
                    //           child: Row(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               Text("Done",style: GoogleFonts.poppins(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w400),),
                    //               SizedBox(width: 5,),
                    //               PopupMenuButton(
                    //                   shape: RoundedRectangleBorder(
                    //                       borderRadius:
                    //                       BorderRadius.all(Radius.circular(20.0))),
                    //                   child:Icon(Icons.arrow_drop_down,color: Colors.white,size: 15,),
                    //                   itemBuilder: (context) => [
                    //                     PopupMenuItem(
                    //                       child: Container(
                    //                         child: Center(
                    //                           child: Text(
                    //                             "Done",
                    //                             style:  GoogleFonts.raleway(
                    //                                 fontSize: 13,
                    //                                 color: Colors.blue,
                    //                                 fontWeight: FontWeight.w500),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       value: 1,
                    //                     ),
                    //                     PopupMenuItem(
                    //                       child: Container(
                    //                         child: Center(
                    //                           child: Text(
                    //                             "In Progress",
                    //                             style: GoogleFonts.raleway(
                    //                                 fontSize: 13,
                    //                                 color: ConstColors.primaryColor,
                    //                                 fontWeight: FontWeight.w500),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       value: 2,
                    //                     ),
                    //                     PopupMenuItem(
                    //                       child: Container(
                    //                         child: Center(
                    //                           child: Text(
                    //                             "On Hold",
                    //                             style:  GoogleFonts.raleway(
                    //                                 fontSize: 13,
                    //                                 color: Color(0xffF40B0B),
                    //                                 fontWeight: FontWeight.w500),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       value: 3,
                    //                     ),
                    //                   ]),
                    //             ],
                    //           ),
                    //         )
                    //
                    //         ),
                    //
                    //
                    //       ]),
                    //       DataRow(cells: [
                    //         DataCell(Text("4",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Title Name",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Charity",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                    //         DataCell(Container(
                    //           height: 22,
                    //           width: 70,
                    //           decoration: BoxDecoration(
                    //               color: ConstColors.primaryColor,
                    //               borderRadius: BorderRadius.circular(30)
                    //           ),
                    //           child: Row(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               Text("In Progress",style: GoogleFonts.poppins(fontSize: 9,color: Colors.white,fontWeight: FontWeight.w400),),
                    //               SizedBox(width: 0,),
                    //               PopupMenuButton(
                    //                   shape: RoundedRectangleBorder(
                    //                       borderRadius:
                    //                       BorderRadius.all(Radius.circular(20.0))),
                    //                   child:Icon(Icons.arrow_drop_down,color: Colors.white,size: 15,),
                    //                   itemBuilder: (context) => [
                    //                     PopupMenuItem(
                    //                       child: Container(
                    //                         child: Center(
                    //                           child: Text(
                    //                             "In Progress",
                    //                             style: GoogleFonts.raleway(
                    //                                 fontSize: 13,
                    //                                 color: ConstColors.primaryColor,
                    //                                 fontWeight: FontWeight.w500),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       value: 1,
                    //                     ),
                    //                     PopupMenuItem(
                    //                       child: Container(
                    //                         child: Center(
                    //                           child: Text(
                    //                             "Done",
                    //                             style:  GoogleFonts.raleway(
                    //                                 fontSize: 13,
                    //                                 color: Colors.blue,
                    //                                 fontWeight: FontWeight.w500),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       value: 2,
                    //                     ),
                    //                     PopupMenuItem(
                    //                       child: Container(
                    //                         child: Center(
                    //                           child: Text(
                    //                             "On Hold",
                    //                             style:  GoogleFonts.raleway(
                    //                                 fontSize: 13,
                    //                                 color: Color(0xffF40B0B),
                    //                                 fontWeight: FontWeight.w500),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       value: 3,
                    //                     ),
                    //                   ]),
                    //             ],
                    //           ),
                    //         )
                    //
                    //         ),
                    //
                    //
                    //       ]),
                    //       DataRow(cells: [
                    //         DataCell(Text("5",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Title Name",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Charity",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                    //         DataCell(Container(
                    //           height: 22,
                    //           width: 65,
                    //           decoration: BoxDecoration(
                    //               color: Color(0xff3290FF),
                    //               borderRadius: BorderRadius.circular(30)
                    //           ),
                    //           child: Row(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               Text("Done",style: GoogleFonts.poppins(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w400),),
                    //               SizedBox(width: 5,),
                    //               PopupMenuButton(
                    //                   shape: RoundedRectangleBorder(
                    //                       borderRadius:
                    //                       BorderRadius.all(Radius.circular(20.0))),
                    //                   child:Icon(Icons.arrow_drop_down,color: Colors.white,size: 15,),
                    //                   itemBuilder: (context) => [
                    //                     PopupMenuItem(
                    //                       child: Container(
                    //                         child: Center(
                    //                           child: Text(
                    //                             "Done",
                    //                             style:  GoogleFonts.raleway(
                    //                                 fontSize: 13,
                    //                                 color: Colors.blue,
                    //                                 fontWeight: FontWeight.w500),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       value: 1,
                    //                     ),
                    //                     PopupMenuItem(
                    //                       child: Container(
                    //                         child: Center(
                    //                           child: Text(
                    //                             "In Progress",
                    //                             style: GoogleFonts.raleway(
                    //                                 fontSize: 13,
                    //                                 color: ConstColors.primaryColor,
                    //                                 fontWeight: FontWeight.w500),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       value: 2,
                    //                     ),
                    //                     PopupMenuItem(
                    //                       child: Container(
                    //                         child: Center(
                    //                           child: Text(
                    //                             "On Hold",
                    //                             style:  GoogleFonts.raleway(
                    //                                 fontSize: 13,
                    //                                 color: Color(0xffF40B0B),
                    //                                 fontWeight: FontWeight.w500),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       value: 3,
                    //                     ),
                    //                   ]),
                    //             ],
                    //           ),
                    //         )
                    //
                    //         ),
                    //
                    //
                    //       ]),
                    //       DataRow(cells: [
                    //         DataCell(Text("6",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Title Name",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Charity",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                    //         DataCell(Container(
                    //           height: 22,
                    //           width: 65,
                    //           decoration: BoxDecoration(
                    //               color: Color(0xffFE0000),
                    //               borderRadius: BorderRadius.circular(30)
                    //           ),
                    //           child: Row(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               Text("On Hold",style: GoogleFonts.poppins(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w400),),
                    //               SizedBox(width: 0,),
                    //               PopupMenuButton(
                    //                   shape: RoundedRectangleBorder(
                    //                       borderRadius:
                    //                       BorderRadius.all(Radius.circular(20.0))),
                    //                   child:Icon(Icons.arrow_drop_down,color: Colors.white,size: 15,),
                    //                   itemBuilder: (context) => [
                    //                     PopupMenuItem(
                    //                       child: Container(
                    //                         child: Center(
                    //                           child: Text(
                    //                             "On Hold",
                    //                             style:  GoogleFonts.raleway(
                    //                                 fontSize: 13,
                    //                                 color: Color(0xffF40B0B),
                    //                                 fontWeight: FontWeight.w500),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       value: 1,
                    //                     ),
                    //                     PopupMenuItem(
                    //                       child: Container(
                    //                         child: Center(
                    //                           child: Text(
                    //                             "Done",
                    //                             style:  GoogleFonts.raleway(
                    //                                 fontSize: 13,
                    //                                 color: Colors.blue,
                    //                                 fontWeight: FontWeight.w500),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       value: 2,
                    //                     ),
                    //                     PopupMenuItem(
                    //                       child: Container(
                    //                         child: Center(
                    //                           child: Text(
                    //                             "In Progress",
                    //                             style: GoogleFonts.raleway(
                    //                                 fontSize: 13,
                    //                                 color: ConstColors.primaryColor,
                    //                                 fontWeight: FontWeight.w500),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       value: 3,
                    //                     ),
                    //
                    //                   ]),
                    //             ],
                    //           ),
                    //         )
                    //
                    //         ),
                    //
                    //
                    //       ]),
                    //
                    //
                    // ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
