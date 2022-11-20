import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muhasebe_app/Components/text_theme.dart';
import 'package:muhasebe_app/Components/users.dart';
import 'package:muhasebe_app/screens/HomePage/delete_goals.dart';
import 'package:muhasebe_app/screens/HomePage/edit_goals.dart';
import '../../Components/ConstColors.dart';
import '../../Components/validator.dart';
import '../DrawerScreens/Home.dart';
import '../DrawerScreens/account.dart';
import '../DrawerScreens/activity_dashboard.dart';
import '../Main/Home2.dart';

class Goals extends StatefulWidget {
  const Goals({Key? key}) : super(key: key);
  @override
  State<Goals> createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {
  String gettitle = "";
  String getdescription = "";

  TextEditingController _title = TextEditingController();
  TextEditingController _description = TextEditingController();
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
                "Goals",
                style: AppTextTheme.titles,
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
                    "Title",
                    style: AppTextTheme.labels,
                  )
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
                        controller: _title,
                        cursorColor: Colors.black54,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle: AppTextTheme.hintTxt,
                          contentPadding: EdgeInsets.only(bottom: 10, left: 10),
                          border: InputBorder.none,
                        ),
                        validator: (value) {
                          Validator.validateField(value: value!);
                          gettitle = value;
                        },
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
                    "Description",
                    style: AppTextTheme.labels,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35),
                child: Container(
                  width: double.infinity,
                  height: 133,
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
                      height: 131,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: TextFormField(
                        controller: _description,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(105),
                        ],
                        maxLines: 6,
                        cursorColor: Colors.black54,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          hintText: "Description",
                          hintStyle: AppTextTheme.hintTxt,
                          contentPadding:
                              EdgeInsets.only(bottom: 0, top: 10, left: 10),
                          border: InputBorder.none,
                        ),
                        validator: (value) {
                          Validator.validateField(value: value!);
                          getdescription = value;
                        },
                        // validator: (vaL) {
                        //   return vaL!.isEmpty ? "Please Enter Name" : null;
                        // },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 73, right: 73),
                child: GestureDetector(
                  onTap: () async {
                    if (_title.text.isEmpty) {
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
                                  "Title should not be empty",
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
                    } else if (_description.text.isEmpty) {
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
                                  "Description should not be empty",
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
                    } else {
                      try {
                        await Users.addGoals(
                            Title: gettitle, Description: getdescription);
                        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        //   content: Container(
                        //     height: 60,
                        //     decoration: BoxDecoration(
                        //       color: ConstColors.background.withOpacity(0.70),
                        //       border:
                        //           Border.all(color: ConstColors.primaryColor),
                        //       borderRadius: BorderRadius.circular(10),
                        //     ),
                        //     child: Padding(
                        //       padding: const EdgeInsets.only(left: 10),
                        //       child: Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           SizedBox(
                        //             height: 10,
                        //           ),
                        //           Text(
                        //             "Error",
                        //             style: TextStyle(
                        //                 color: ConstColors.primaryColor,
                        //                 fontFamily: 'Bold',
                        //                 fontWeight: FontWeight.w700),
                        //           ),
                        //           SizedBox(
                        //             height: 5,
                        //           ),
                        //           Text(
                        //             "Added Succesfully",
                        //             style: TextStyle(
                        //                 color: ConstColors.primaryColor,
                        //                 fontFamily: 'Book',
                        //                 fontWeight: FontWeight.w600),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        //   backgroundColor: Colors.transparent,
                        //   elevation: 0,
                        //   behavior: SnackBarBehavior.floating,
                        //   duration: Duration(seconds: 2),
                        //   margin: EdgeInsets.only(
                        //       bottom: MediaQuery.of(context).size.height - 130,
                        //       right: 20,
                        //       left: 20),
                        // ));
                        _title.clear();
                        _description.clear();
                      } catch (e) {
                        print(e);
                      }
                    }
                  },
                  // onTap: (){
                  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCatogaries()));
                  // },
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
                        child: const Text(
                          'Submit',
                          style: TextStyle(
                            fontFamily: 'Trial',
                            fontSize: 17,
                            color: Color(0xff3290FF),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              StreamBuilder(
                  stream: Users.readGoals(),
                  builder: (context, snapshot) {
                    if(snapshot.connectionState == ConnectionState.waiting){
                      return CupertinoActivityIndicator();
                    }
                   else if (snapshot.data!.docs.isNotEmpty) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Container(
                          height: 240,
                          child: ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              var noteinfo = snapshot.data!.docs[index].data()
                                  as Map<String, dynamic>;
                              String docId = snapshot.data!.docs[index].id;
                              String title = noteinfo['title'];
                              String description = noteinfo['description'];
                              return Column(
                                children: [
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25, right: 25, top: 0, bottom: 0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 93,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
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
                                        padding:
                                            const EdgeInsets.only(left: 1, right: 1),
                                        child: Container(
                                          width: double.infinity,
                                          height: 91,
                                          decoration: const BoxDecoration(
                                            borderRadius:
                                                BorderRadius.all(Radius.circular(9)),
                                            color: Colors.white,
                                          ),
                                          alignment: Alignment.center,
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    title,
                                                    style: TextStyle(
                                                        fontFamily: 'Book',
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 16,
                                                        color: ConstColors.secondary),
                                                  ),
                                                  Spacer(),
                                                  GestureDetector(
                                                    onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>EditGoals(
                                  currenttitle:title,
                                  currentDescription:description,
                                  currentId:docId,
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
                                                    onTap:()async{
                                                      await Users.deleteGoals(docId: docId);
                              },
                                                    child: FaIcon(
                                                      FontAwesomeIcons.trashCan,
                                                      color: Color(0xffFE0000),
                                                      size: 15,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8, right: 8),
                                                child: Text(
                                                  description,
                                                  maxLines: 3,
                                                  style: TextStyle(
                                                      fontFamily: 'Book',
                                                      fontSize: 11,
                                                      fontWeight: FontWeight.w400,
                                                      color: ConstColors.primaryColor,
                                                      letterSpacing: -0.1),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      );
                    } else {
                      return Column(
                        children: [
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 25, right: 25),
                            child: Container(
                              width: double.infinity,
                              height: 93,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Color(0xff587CA7).withOpacity(0.31),
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
                                padding:
                                    const EdgeInsets.only(left: 1, right: 1),
                                child: Container(
                                  width: double.infinity,
                                  height: 91,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(9)),
                                    color: Colors.white,
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            "Title",
                                            style: TextStyle(
                                                fontFamily: 'Trial',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: ConstColors.secondary),
                                          ),
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
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Lorem Ipsum is simply dummy text of the printing and \ntypesetting industry. Lorem Ipsum has been the.",
                                        style: TextStyle(
                                            fontFamily: 'Trial',
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                            color: ConstColors.primaryColor,
                                            letterSpacing: -0.4),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25, right: 25),
                            child: Container(
                              width: double.infinity,
                              height: 93,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Color(0xff587CA7).withOpacity(0.31),
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
                                padding:
                                    const EdgeInsets.only(left: 1, right: 1),
                                child: Container(
                                  width: double.infinity,
                                  height: 91,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(9)),
                                    color: Colors.white,
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            "Title",
                                            style: TextStyle(
                                                fontFamily: 'Trial',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: ConstColors.secondary),
                                          ),
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
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Lorem Ipsum is simply dummy text of the printing and \ntypesetting industry. Lorem Ipsum has been the.",
                                        style: TextStyle(
                                            fontFamily: 'Trial',
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                            color: ConstColors.primaryColor,
                                            letterSpacing: -0.4),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      );
                    }
                  }),
              SizedBox(height: 20,),
              // SizedBox(
              //   height: 40,
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 25, right: 25),
              //   child: Container(
              //     width: double.infinity,
              //     height: 93,
              //     alignment: Alignment.center,
              //     decoration: BoxDecoration(
              //         borderRadius: const BorderRadius.all(Radius.circular(10)),
              //         boxShadow: [
              //           BoxShadow(
              //               color: Color(0xff587CA7).withOpacity(0.31),
              //               blurRadius: 22,
              //               spreadRadius: 0,
              //               offset: Offset(
              //                 6,
              //                 6,
              //               )),
              //           BoxShadow(
              //               color: Color(0xffFFFFFF),
              //               blurRadius: 20,
              //               spreadRadius: 0,
              //               offset: Offset(-4, -4))
              //         ],
              //         gradient: LinearGradient(
              //             begin: Alignment.topCenter,
              //             end: Alignment.bottomCenter,
              //             colors: [
              //               ConstColors.secondary,
              //               ConstColors.primaryColor,
              //             ])),
              //     child: Padding(
              //       padding: const EdgeInsets.only(left: 1, right: 1),
              //       child: Container(
              //         width: double.infinity,
              //         height: 91,
              //         decoration: const BoxDecoration(
              //           borderRadius: BorderRadius.all(Radius.circular(9)),
              //           color: Colors.white,
              //         ),
              //         alignment: Alignment.center,
              //         child: Column(
              //           children: [
              //             SizedBox(
              //               height: 12,
              //             ),
              //             Row(
              //               children: [
              //                 SizedBox(
              //                   width: 8,
              //                 ),
              //                 Text(
              //                   "Title",
              //                   style: TextStyle(
              //                       fontFamily: 'Trial',
              //                       fontWeight: FontWeight.w600,
              //                       fontSize: 16,
              //                       color: ConstColors.secondary),
              //                 ),
              //                 Spacer(),
              //                 FaIcon(
              //                   FontAwesomeIcons.edit,
              //                   color: ConstColors.secondary,
              //                   size: 15,
              //                 ),
              //                 SizedBox(
              //                   width: 20,
              //                 ),
              //                 FaIcon(
              //                   FontAwesomeIcons.trashCan,
              //                   color: Color(0xffFE0000),
              //                   size: 15,
              //                 ),
              //                 SizedBox(
              //                   width: 10,
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 5,
              //             ),
              //             Text(
              //               "Lorem Ipsum is simply dummy text of the printing and \ntypesetting industry. Lorem Ipsum has been the.",
              //               style: TextStyle(
              //                   fontFamily: 'Trial',
              //                   fontSize: 11,
              //                   fontWeight: FontWeight.w400,
              //                   color: ConstColors.primaryColor,
              //                   letterSpacing: -0.4),
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 25, right: 25),
              //   child: Container(
              //     width: double.infinity,
              //     height: 93,
              //     alignment: Alignment.center,
              //     decoration: BoxDecoration(
              //         borderRadius: const BorderRadius.all(Radius.circular(10)),
              //         boxShadow: [
              //           BoxShadow(
              //               color: Color(0xff587CA7).withOpacity(0.31),
              //               blurRadius: 22,
              //               spreadRadius: 0,
              //               offset: Offset(
              //                 6,
              //                 6,
              //               )),
              //           BoxShadow(
              //               color: Color(0xffFFFFFF),
              //               blurRadius: 20,
              //               spreadRadius: 0,
              //               offset: Offset(-4, -4))
              //         ],
              //         gradient: LinearGradient(
              //             begin: Alignment.topCenter,
              //             end: Alignment.bottomCenter,
              //             colors: [
              //               ConstColors.secondary,
              //               ConstColors.primaryColor,
              //             ])),
              //     child: Padding(
              //       padding: const EdgeInsets.only(left: 1, right: 1),
              //       child: Container(
              //         width: double.infinity,
              //         height: 91,
              //         decoration: const BoxDecoration(
              //           borderRadius: BorderRadius.all(Radius.circular(9)),
              //           color: Colors.white,
              //         ),
              //         alignment: Alignment.center,
              //         child: Column(
              //           children: [
              //             SizedBox(
              //               height: 12,
              //             ),
              //             Row(
              //               children: [
              //                 SizedBox(
              //                   width: 8,
              //                 ),
              //                 Text(
              //                   "Title",
              //                   style: TextStyle(
              //                       fontFamily: 'Trial',
              //                       fontWeight: FontWeight.w600,
              //                       fontSize: 16,
              //                       color: ConstColors.secondary),
              //                 ),
              //                 Spacer(),
              //                 FaIcon(
              //                   FontAwesomeIcons.edit,
              //                   color: ConstColors.secondary,
              //                   size: 15,
              //                 ),
              //                 SizedBox(
              //                   width: 20,
              //                 ),
              //                 FaIcon(
              //                   FontAwesomeIcons.trashCan,
              //                   color: Color(0xffFE0000),
              //                   size: 15,
              //                 ),
              //                 SizedBox(
              //                   width: 10,
              //                 ),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 5,
              //             ),
              //             Text(
              //               "Lorem Ipsum is simply dummy text of the printing and \ntypesetting industry. Lorem Ipsum has been the.",
              //               style: TextStyle(
              //                   fontFamily: 'Trial',
              //                   fontSize: 11,
              //                   fontWeight: FontWeight.w400,
              //                   color: ConstColors.primaryColor,
              //                   letterSpacing: -0.4),
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
