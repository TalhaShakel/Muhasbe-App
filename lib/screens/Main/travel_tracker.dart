import 'package:csc_picker/csc_picker.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhasebe_app/Components/text_theme.dart';
import 'package:muhasebe_app/screens/Main/travel_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Components/ConstColors.dart';
import '../DrawerScreens/Home.dart';
import '../DrawerScreens/account.dart';
import '../DrawerScreens/activity_dashboard.dart';
import 'Home2.dart';
import 'package:country_picker/country_picker.dart';

class TravelTracker extends StatefulWidget {
  const TravelTracker({Key? key}) : super(key: key);

  @override
  State<TravelTracker> createState() => _TravelTrackerState();
}

class _TravelTrackerState extends State<TravelTracker> {
  TextEditingController _yes = TextEditingController();
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String defaultvalue = "";
  String countryValue = "";
  List dropDownlistData = [
    {"title": "60 Days", "value": "1"},
    {"title": "90 Days", "value": "2"},
    {"title": "120 Days", "value": "3"},
    {"title": "180 Days", "value": "4"},
  ];
  String defaultvalue2 = "";
  List dropDownlistData2 = [
    {"title": "60 Days", "value": "1"},
    {"title": "90 Days", "value": "2"},
    {"title": "120 Days", "value": "3"},
    {"title": "180 Days", "value": "4"},
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
                "Travel Tracker",
                style: AppTextTheme.titles,
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TravelData()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 90, right: 90),
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
                      'Add Travel Data',
                      style: TextStyle(
                          fontFamily: 'Trial',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 270,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffFFFFFF),
                          blurRadius: 20,
                          spreadRadius: 0,
                          offset: Offset(-4, -4)),
                      BoxShadow(
                          color: Color(0xff587CA7).withOpacity(0.31),
                          blurRadius: 22,
                          spreadRadius: 0,
                          offset: Offset(
                            6,
                            6,
                          )),
                      // BoxShadow(
                      //     color: Color(0xffFFFFFF),
                      //     blurRadius: 20,
                      //     spreadRadius: 0,
                      //     offset: Offset(-4,-4)
                      // )
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),

                      // showCountryPicker(
                      //   context: context,
                      //   onSelect: (Country country) {
                      //     print('Select country: ${country.displayName}');
                      //   },
                      // ),

                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Container(
                          height: 55,
                          width: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Colors.white,
                              ),
                              child: CSCPicker(
                                // defaultCountry: ,
                                onCountryChanged: (value) {
                                  setState(() {
                                    countryValue = value;
                                  });
                                },
                                showStates: false,
                                showCities: false,
                                // currentCountry: "India",
                                // currentState: "Pakistan",
                                flagState: CountryFlag.ENABLE,
                                countryDropdownLabel: countryValue == ""
                                    ? "Country"
                                    : countryValue,
                                selectedItemStyle: AppTextTheme.hintTxt,
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
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Container(
                          width: double.infinity,
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
                              child: DropdownButtonHideUnderline(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: DropdownButton<String>(
                                      iconDisabledColor: Color(0xff8B9EB0),
                                      iconEnabledColor: Color(0xff8B9EB0),
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
                                                const EdgeInsets.only(left: 10),
                                            child: Text(
                                              "30 Days",
                                              style: AppTextTheme.hintTxt,
                                            ),
                                          ),
                                          value: "",
                                        ),
                                        ...dropDownlistData
                                            .map<DropdownMenuItem<String>>(
                                                (data) {
                                          return DropdownMenuItem<String>(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10),
                                                child: Text(
                                                  data['title'],
                                                  style: AppTextTheme.hintTxt,
                                                ),
                                              ),
                                              value: data['value']);
                                        }).toList(),
                                      ]),
                                ),
                              ),
                              // child:Padding(
                              //   padding: const EdgeInsets.only(bottom: 0),
                              //   child: DropdownButtonHideUnderline(
                              //     child: DropdownDatePicker(
                              //       inputDecoration: InputDecoration(
                              //         border: InputBorder.none
                              //       ),
                              //       // inputDecoration: InputDecoration(
                              //       //     enabledBorder: const OutlineInputBorder(
                              //       //       borderSide: BorderSide(color: Colors.grey, width: 1.0),
                              //       //     ),),
                              //       //     border: OutlineInputBorder(
                              //       //         borderRadius: BorderRadius.circular(10))), // optional
                              //       isDropdownHideUnderline: true,
                              //       showMonth: false,
                              //       showYear: false,// optional
                              //       isFormValidator: false, // optional
                              //       startYear: 1900, // optional
                              //       endYear: 2020, // optional
                              //       width: 10, // optional
                              //       // selectedDay: 14, // optional
                              //       selectedMonth: 10, // optional
                              //       selectedYear: 1993, // optional
                              //       onChangedDay: (value) => print('onChangedDay: $value'),
                              //       // onChangedMonth: (value) => print('onChangedMonth: $value'),
                              //       // onChangedYear: (value) => print('onChangedYear: $value'),
                              //       //boxDecoration: BoxDecoration(
                              //       // border: Border.all(color: Colors.grey, width: 1.0)), // optional
                              //       // showDay: false,// optional
                              //       // dayFlex: 2,// optional
                              //       // locale: "zh_CN",// optional
                              //       // hintDay: 'Day', // optional
                              //       // hintMonth: 'Month', // optional
                              //       // hintYear: 'Year', // optional
                              //       // hintTextStyle: TextStyle(color: Colors.grey), // optional
                              //     ),
                              //   ),
                              // ),

                              // child:  DropdownButtonHideUnderline(
                              //   child: Padding(
                              //     padding: const EdgeInsets.only(right: 10),
                              //     child: DropdownButton<String>(
                              //         iconDisabledColor: Color(0xff8B9EB0),
                              //         iconEnabledColor: Color(0xff8B9EB0),
                              //         isExpanded: true,
                              //         isDense: true,
                              //         value: defaultvalue2,
                              //         onChanged: (value) {
                              //           setState(() {
                              //             print("selected value $value");
                              //             defaultvalue2 = value!;
                              //           });
                              //         },
                              //         items: [
                              //           DropdownMenuItem(
                              //             child: Padding(
                              //               padding: const EdgeInsets.only(left: 10),
                              //               child: Text("30 Days",style: AppTextTheme.hintTxt,),
                              //             ),
                              //             value: "",
                              //           ),
                              //           ...dropDownlistData2
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
                      SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        // onTap: (){
                        //   Navigator.push(context, MaterialPageRoute(builder: (context)=>TravelTracker()));
                        // },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 66, right: 66),
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
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
                              padding: const EdgeInsets.only(left: 1, right: 1),
                              child: Container(
                                width: double.infinity,
                                height: 38,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(9)),
                                  color: Colors.white,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Report',
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
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffFFFFFF),
                          blurRadius: 20,
                          spreadRadius: 0,
                          offset: Offset(-4, -4)),
                      BoxShadow(
                          color: Color(0xff587CA7).withOpacity(0.31),
                          blurRadius: 22,
                          spreadRadius: 0,
                          offset: Offset(
                            6,
                            6,
                          )),
                      // BoxShadow(
                      //     color: Color(0xffFFFFFF),
                      //     blurRadius: 20,
                      //     spreadRadius: 0,
                      //     offset: Offset(-4,-4)
                      // )
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            "Trip 1",
                            style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: ConstColors.primaryColor),
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
                            width: 34,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13, right: 13),
                        child: Container(
                          width: double.infinity,
                          height: 39,
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
                              height: 37,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                                color: Colors.white,
                              ),
                              alignment: Alignment.center,
                              child: Row(children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "Start Date: 29 / 09 / 2023",
                                  style: TextStyle(
                                      fontFamily: 'Book',
                                      fontSize: 13,
                                      color: Color(0xff8B9EB0)),
                                )
                              ]),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13, right: 13),
                        child: Container(
                          width: double.infinity,
                          height: 39,
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
                              height: 37,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                                color: Colors.white,
                              ),
                              alignment: Alignment.center,
                              child: Row(children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "End Date: 29 / 09 / 2023",
                                  style: TextStyle(
                                      fontFamily: 'Book',
                                      fontSize: 13,
                                      color: Color(0xff8B9EB0)),
                                )
                              ]),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13, right: 13),
                        child: Container(
                          width: double.infinity,
                          height: 105,
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
                              height: 103,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                                color: Colors.white,
                              ),
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Business Related Visit To India",
                                          style: TextStyle(
                                              fontFamily: 'Trial',
                                              fontSize: 13,
                                              color: Color(0xff8B9EB0)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Business Related Visit To India",
                                          style: TextStyle(
                                              fontFamily: 'Trial',
                                              fontSize: 13,
                                              color: Color(0xff8B9EB0)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Business Related Visit To India",
                                          style: TextStyle(
                                              fontFamily: 'Trial',
                                              fontSize: 13,
                                              color: Color(0xff8B9EB0)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '7 Days',
                        style: TextStyle(
                            fontFamily: 'Trial',
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: ConstColors.secondary),
                      ),
                    ],
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
