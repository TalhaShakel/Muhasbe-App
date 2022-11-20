import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhasebe_app/Components/text_theme.dart';

import '../../Components/ConstColors.dart';
import '../DrawerScreens/Home.dart';
import '../DrawerScreens/account.dart';
import '../DrawerScreens/activity_dashboard.dart';
import 'Home2.dart';
import 'activity.dart';
class Additional extends StatefulWidget {
  const Additional({Key? key}) : super(key: key);

  @override
  State<Additional> createState() => _AdditionalState();
}

class _AdditionalState extends State<Additional> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _title = TextEditingController();
  TextEditingController _description = TextEditingController();
  TextEditingController _rakats = TextEditingController();


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
                                      fontSize: 16, color: Colors.white),
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
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Trial'
                    ),
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
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Trial'
                    ),
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
                        fontSize: 10, color: ConstColors.primaryColor),
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
                Column(
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
                SizedBox(
                  width: 50,
                ),
                Column(
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
              ],
            ),
          ),
        ),
        preferredSize: Size.fromHeight(70.0),
      ),
      body:Stack(
        children:[
          Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30,),
                Text("Additional Prayers",style: AppTextTheme.titles,),
                SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(width: 36,),
                    Text("Title",style: AppTextTheme.labels,),
                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 35,right: 35),
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
                              offset: Offset(6,6,)),
                          BoxShadow(
                              color: Color(0xffFFFFFF),
                              blurRadius: 20,
                              spreadRadius: 0,
                              offset: Offset(-4,-4)
                          )
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              ConstColors.secondary,
                              ConstColors.primaryColor,
                            ])),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 1,right: 1),
                      child: Container(
                        width: double.infinity,
                        height: 38,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child:  TextFormField(
                          controller: _title,
                          cursorColor: Colors.black54,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            hintText: "Title",
                            hintStyle: AppTextTheme.hintTxt,
                            contentPadding: EdgeInsets.only(bottom: 10,left: 10),
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
                SizedBox(height: 18,),

                Row(
                  children: [
                    SizedBox(width: 36,),
                    Text("Description",style: AppTextTheme.labels,),
                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 35,right: 35),
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
                              offset: Offset(6,6,)),
                          BoxShadow(
                              color: Color(0xffFFFFFF),
                              blurRadius: 20,
                              spreadRadius: 0,
                              offset: Offset(-4,-4)
                          )
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              ConstColors.secondary,
                              ConstColors.primaryColor,
                            ])),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 1,right: 1),
                      child: Container(
                        width: double.infinity,
                        height: 38,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child:  TextFormField(
                          controller: _description,
                          cursorColor: Colors.black54,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            hintText: "Description",
                            hintStyle: AppTextTheme.hintTxt,
                            contentPadding: EdgeInsets.only(bottom: 10,left: 10),
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
                SizedBox(height: 18,),

                Row(
                  children: [
                    SizedBox(width: 36,),
                    Text("Rakats",style: AppTextTheme.labels,),
                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 35,right: 35),
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
                              offset: Offset(6,6,)),
                          BoxShadow(
                              color: Color(0xffFFFFFF),
                              blurRadius: 20,
                              spreadRadius: 0,
                              offset: Offset(-4,-4)
                          )
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              ConstColors.secondary,
                              ConstColors.primaryColor,
                            ])),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 1,right: 1),
                      child: Container(
                        width: double.infinity,
                        height: 38,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child:  TextFormField(
                          controller: _rakats,
                          keyboardType: TextInputType.number,
                          cursorColor: Colors.black54,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            hintText: "4",
                            hintStyle: AppTextTheme.hintTxt,
                            contentPadding: EdgeInsets.only(bottom: 10,left: 10),
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
                SizedBox(height: 40,),

                Padding(
                  padding: const EdgeInsets.only(left: 73,right: 73),
                  child: GestureDetector(
                    // onTap: (){
                    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                    // },
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
                                offset: Offset(6,6,)),
                            BoxShadow(
                                color: Color(0xffFFFFFF),
                                blurRadius: 20,
                                spreadRadius: 0,
                                offset: Offset(-4,-4)
                            )
                          ],
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                ConstColors.secondary,
                                ConstColors.primaryColor,
                              ])),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 1,right: 1),
                        child: Container(
                          width: double.infinity,
                          height: 38,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(9)),
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          child:  Text('Submit',style: TextStyle(
                            fontFamily: 'Trial',
                            fontSize: 17,fontWeight: FontWeight.w400,color:ConstColors.secondary,),),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25,top: 40),
                  child: Container(
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff3290FF),width: 2),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff000000).withOpacity(0.10),
                              offset: Offset(0,2),
                              blurRadius: 2,
                              spreadRadius: 4)
                        ]
                    ),
                    child: ListView.builder(
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
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
                                height: 5,
                              ),
                              Text(
                                "Lorem Ipsum is simply dummy text of the printing and \ntypesetting industry...",
                                style: TextStyle(
                                    fontFamily: 'Trial',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: ConstColors.primaryColor,
                                    letterSpacing: -0.9),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Text("Rakats: 4",style: TextStyle(
                        fontFamily: 'CodeNext-Trial',
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: ConstColors.primaryColor), ),
                                  Spacer(),
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
                    //     horizontalMargin: 5,
                    //     columnSpacing: 11,
                    //     // headingRowColor:
                    //     // MaterialStateColor.resolveWith((states) => Colors.blue),
                    //     columns:[
                    //       DataColumn(
                    //           label: Text("Sr. No.",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w500,color: ConstColors.primaryColor),)),
                    //       DataColumn(
                    //           label: Text("Title",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w500,color: ConstColors.primaryColor),)),
                    //       DataColumn(
                    //           label: Text("Description",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w500,color: ConstColors.primaryColor),)),
                    //       DataColumn(
                    //           label: Text("Rakats",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w500,color: ConstColors.primaryColor),)),
                    //     ],
                    //
                    //     rows: [
                    //       DataRow(cells: [
                    //         DataCell(Text("1",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Title Name",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Additional",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                    //         DataCell(
                    //             Row(
                    //               children: [
                    //                 Text("2",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),),
                    //                 SizedBox(width: 15,),
                    //                 FaIcon(FontAwesomeIcons.edit,color: ConstColors.secondary,size: 15,),
                    //                 SizedBox(width: 10,),
                    //
                    //                 FaIcon(FontAwesomeIcons.trashCan,color: Color(0xffFE0000),size: 15,),
                    //
                    //
                    //               ],
                    //             )
                    //
                    //         ),
                    //
                    //
                    //       ]),
                    //       DataRow(cells: [
                    //         DataCell(Text("2",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Title Name",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Additional",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                    //         DataCell(
                    //             Row(
                    //               children: [
                    //                 Text("2",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),),
                    //                 SizedBox(width: 15,),
                    //                 FaIcon(FontAwesomeIcons.edit,color: ConstColors.secondary,size: 15,),
                    //                 SizedBox(width: 10,),
                    //
                    //                 FaIcon(FontAwesomeIcons.trashCan,color: Color(0xffFE0000),size: 15,),
                    //
                    //
                    //               ],
                    //             )
                    //
                    //         ),
                    //
                    //
                    //       ]),
                    //       DataRow(cells: [
                    //         DataCell(Text("3",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Title Name",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Additional",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                    //         DataCell(
                    //             Row(
                    //               children: [
                    //                 Text("2",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),),
                    //                 SizedBox(width: 15,),
                    //                 FaIcon(FontAwesomeIcons.edit,color: ConstColors.secondary,size: 15,),
                    //                 SizedBox(width: 10,),
                    //
                    //                 FaIcon(FontAwesomeIcons.trashCan,color: Color(0xffFE0000),size: 15,),
                    //
                    //
                    //               ],
                    //             )
                    //
                    //         ),
                    //
                    //
                    //       ]),
                    //       DataRow(cells: [
                    //         DataCell(Text("4",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Title Name",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Additional",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                    //         DataCell(
                    //             Row(
                    //               children: [
                    //                 Text("2",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),),
                    //                 SizedBox(width: 15,),
                    //                 FaIcon(FontAwesomeIcons.edit,color: ConstColors.secondary,size: 15,),
                    //                 SizedBox(width: 10,),
                    //
                    //                 FaIcon(FontAwesomeIcons.trashCan,color: Color(0xffFE0000),size: 15,),
                    //
                    //
                    //               ],
                    //             )
                    //
                    //         ),
                    //
                    //
                    //       ]),
                    //       DataRow(cells: [
                    //         DataCell(Text("5",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Title Name",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Additional",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                    //         DataCell(
                    //             Row(
                    //               children: [
                    //                 Text("2",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),),
                    //                 SizedBox(width: 15,),
                    //                 FaIcon(FontAwesomeIcons.edit,color: ConstColors.secondary,size: 15,),
                    //                 SizedBox(width: 10,),
                    //
                    //                 FaIcon(FontAwesomeIcons.trashCan,color: Color(0xffFE0000),size: 15,),
                    //
                    //
                    //               ],
                    //             )
                    //
                    //         ),
                    //
                    //
                    //       ]),
                    //       DataRow(cells: [
                    //         DataCell(Text("6",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Title Name",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500),)),
                    //         DataCell(Text("Additional",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                    //         DataCell(
                    //             Row(
                    //               children: [
                    //                 Text("2",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),),
                    //                 SizedBox(width: 15,),
                    //                 FaIcon(FontAwesomeIcons.edit,color: ConstColors.secondary,size: 15,),
                    //                 SizedBox(width: 10,),
                    //
                    //                 FaIcon(FontAwesomeIcons.trashCan,color: Color(0xffFE0000),size: 15,),
                    //
                    //
                    //               ],
                    //             )
                    //
                    //         ),
                    //
                    //
                    //       ]),
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //     ]),
                  ),
                ),
SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ],
      ) ,
    );
  }
}
