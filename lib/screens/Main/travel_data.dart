import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhasebe_app/screens/Main/reports.dart';

import '../../Components/ConstColors.dart';
import '../../Components/text_theme.dart';
import '../DrawerScreens/Home.dart';
import '../DrawerScreens/account.dart';
import '../DrawerScreens/activity_dashboard.dart';
import 'Home2.dart';
import 'activity.dart';
class TravelData extends StatefulWidget {
  const TravelData({Key? key}) : super(key: key);

  @override
  State<TravelData> createState() => _TravelDataState();
}

class _TravelDataState extends State<TravelData> {
  TextEditingController _yes = TextEditingController();
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String countryValue = "";

  String defaultvalue = "";
  List dropDownlistData = [
    {"title": "Saudi", "value": "1"},
    {"title": "China", "value": "2"},
    {"title": "India", "value": "3"},
  ];

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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: ConstColors.background,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text("Travel Data",style: AppTextTheme.titles,),
              SizedBox(height: 4,),
              Text("Enter Your Travel Data",style: TextStyle(
                  fontFamily: 'Trial',
                  fontSize: 12,color: Color(0xff828282)),),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35),
                child: Container(
                  height: 55,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
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
                      height: 52,
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.white,
                      ),
                      child: CSCPicker(
                        onCountryChanged: (value) {
                          setState(() {
                            countryValue = value;
                          });
                        },
                        showStates: false,
                        showCities: false,
                        countryDropdownLabel: "Country:  $countryValue",selectedItemStyle: AppTextTheme.hintTxt,
                        dropdownHeadingStyle: AppTextTheme.labels,
                        dropdownItemStyle: AppTextTheme.labels,
                      ),
                      // child: DropdownButtonHideUnderline(
                      //   child: Padding(
                      //     padding: const EdgeInsets.only(right: 10),
                      //     child: DropdownButton<String>(
                      //       iconDisabledColor: Color(0xff8B9EB0),
                      //         iconEnabledColor: Color(0xff8B9EB0),
                      //         isExpanded: true,
                      //         isDense: true,
                      //         value: defaultvalue,
                      //         onChanged: (value) {
                      //           setState(() {
                      //             print("selected value $value");
                      //             defaultvalue = value!;
                      //           });
                      //         },
                      //         items: [
                      //           DropdownMenuItem(
                      //             child: Padding(
                      //               padding: const EdgeInsets.only(left: 10),
                      //               child: Text("UAE",style: AppTextTheme.hintTxt,),
                      //             ),
                      //             value: "",
                      //           ),
                      //           ...dropDownlistData
                      //               .map<DropdownMenuItem<String>>((data) {
                      //             return DropdownMenuItem<String>(
                      //                 child: Padding(
                      //                   padding: const EdgeInsets.only(left: 10),
                      //                   child: Text(data['title'],style: AppTextTheme.hintTxt,),
                      //                 ),
                      //                 value: data['value']);
                      //           }).toList(),
                      //         ]),
                      //   ),
                      // ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 22,),
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
                      child: Row(
                          children :[
                            SizedBox(width: 15,),
                            Text("Start Date: 29 / 09 / 2023",style:TextStyle(
                                fontFamily: 'Book',
                                fontSize: 13,color: Color(0xff8B9EB0)) ,)
                          ]

                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 22,),
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
                      child: Row(
                          children :[
                            SizedBox(width: 15,),
                            Text("End Date: 29 / 09 / 2023",style:TextStyle(
                                fontFamily: 'Book',
                                fontSize: 13,color: Color(0xff8B9EB0)) ,)
                          ]

                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 22,),
              Padding(
                padding: const EdgeInsets.only(left: 35,right: 35),
                child: Container(
                  width: double.infinity,
                  height: 105,
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
                      height: 103,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("Business Related Visit To India",style:TextStyle(
                                    fontFamily: 'Trial',
                                    fontSize: 13,color: Color(0xff8B9EB0)),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("Business Related Visit To India",style:TextStyle(
                                    fontFamily: 'Trial',
                                    fontSize: 13,color: Color(0xff8B9EB0)),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("Business Related Visit To India",style:TextStyle(
                                    fontFamily: 'Trial',
                                    fontSize: 13,color: Color(0xff8B9EB0)),),
                              ],
                            ),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                // onTap: (){
                //   Navigator.push(context, MaterialPageRoute(builder: (context)=>TravelTracker()));
                // },
                child: Padding(
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
                        child:  Text('7 Days',style: TextStyle(
                            fontFamily: 'Trial',
                            fontSize: 17,fontWeight: FontWeight.w400,color:ConstColors.secondary),),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Reports()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 90,right: 90),
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
                    child: Text('Save For Later',style: TextStyle(
                        fontFamily: 'Trial',
                        fontSize: 17,fontWeight: FontWeight.w400,color:Colors.white),),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                // onTap: (){
                //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Reports()));
                // },
                child: Padding(
                  padding: const EdgeInsets.only(left: 130,right: 130),
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
                        child: const Text('Save',style: TextStyle(fontSize: 17,color:Color(0xff3290FF),fontWeight: FontWeight.w400,),),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),

            ],
          ),
        ),
      ),
    );
  }
}
