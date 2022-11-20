import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muhasebe_app/Components/text_theme.dart';
import '../../Components/ConstColors.dart';
import '../DrawerScreens/Home.dart';
import '../DrawerScreens/account.dart';
import '../DrawerScreens/activity_dashboard.dart';
import 'Home2.dart';
class Quran extends StatefulWidget {
  const Quran({Key? key}) : super(key: key);
  @override
  State<Quran> createState() => _QuranState();
}
class _QuranState extends State<Quran> {
  String defaultvalue = "";
  List dropDownlistData = [
    {"title": "Empty", "value": "1"},
  ];
  String defaultvalue2 = "";
  List dropDownlistData2 = [
    {"title": "Empty", "value": "1"},
  ];
  String defaultvalue3 = "";
  List dropDownlistData3 = [
    {"title": "Empty", "value": "1"},
  ];
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
              Text("Quran & Moon",style:
            TextStyle(
              fontSize: 28,
              fontFamily: 'Bold',
              color: ConstColors.primaryColor

            )),
              SizedBox(height: 4,),
              Text("Lunar Reminder Settings",style:
              TextStyle(
                  fontFamily: 'Trial',
                  fontSize: 12,
                  color: Color(0xff828282)),),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                child: Container(
                  height: 310,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffFFFFFF),
                          blurRadius: 20,
                          spreadRadius: 0,
                          offset: Offset(-4,-4)
                      ),
                      BoxShadow(
                          color: Color(0xff587CA7).withOpacity(0.31),
                          blurRadius: 22,
                          spreadRadius: 0,
                          offset: Offset(6,6,)),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 40,),
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
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Text("Day of Month",style: AppTextTheme.hintTxt,),
                                          ),
                                          value: "",
                                        ),
                                        ...dropDownlistData
                                            .map<DropdownMenuItem<String>>((data) {
                                          return DropdownMenuItem<String>(
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 10),
                                                child: Text(data['title'],style: AppTextTheme.hintTxt,),
                                              ),
                                              value: data['value']);
                                        }).toList(),
                                      ]),
                                ),
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
                              child: DropdownButtonHideUnderline(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: DropdownButton<String>(
                                      iconDisabledColor: Color(0xff8B9EB0),
                                      iconEnabledColor: Color(0xff8B9EB0),
                                      isExpanded: true,
                                      isDense: true,
                                      value: defaultvalue2,
                                      onChanged: (value) {
                                        setState(() {
                                          print("selected value $value");
                                          defaultvalue2= value!;
                                        });
                                      },
                                      items: [
                                        DropdownMenuItem(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Text("Al Fathihah",style: AppTextTheme.hintTxt,),
                                          ),
                                          value: "",
                                        ),
                                        ...dropDownlistData2
                                            .map<DropdownMenuItem<String>>((data) {
                                          return DropdownMenuItem<String>(
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 10),
                                                child: Text(data['title'],style: AppTextTheme.hintTxt,),
                                              ),
                                              value: data['value']);
                                        }).toList(),
                                      ]),
                                ),
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
                              child: DropdownButtonHideUnderline(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: DropdownButton<String>(
                                      iconDisabledColor: Color(0xff8B9EB0),
                                      iconEnabledColor: Color(0xff8B9EB0),
                                      isExpanded: true,
                                      isDense: true,
                                      value: defaultvalue3,
                                      onChanged: (value) {
                                        setState(() {
                                          print("selected value $value");
                                          defaultvalue3 = value!;
                                        });
                                      },
                                      items: [
                                        DropdownMenuItem(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Text("Al Imran",style: AppTextTheme.hintTxt,),
                                          ),
                                          value: "",
                                        ),
                                        ...dropDownlistData3
                                            .map<DropdownMenuItem<String>>((data) {
                                          return DropdownMenuItem<String>(
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 10),
                                                child: Text(data['title'],style: AppTextTheme.hintTxt,),
                                              ),
                                              value: data['value']);
                                        }).toList(),
                                      ]),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        // onTap: (){
                        //   Navigator.push(context, MaterialPageRoute(builder: (context)=>DailyReflection()));
                        // },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 75,right: 75,top: 10),
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
                                    fontSize: 17,fontWeight: FontWeight.w400,color:ConstColors.secondary),),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,top: 35),
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
                  child: SingleChildScrollView(
                    child: DataTable(
                        horizontalMargin:7,
                        columnSpacing: 12,
                        columns:[
                          DataColumn(
                              label: Text("Date",style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 13,fontWeight: FontWeight.w600,color: ConstColors.primaryColor),)),
                          DataColumn(
                              label: Text("From Surah",style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 13,fontWeight: FontWeight.w600,color: ConstColors.primaryColor),)),
                          DataColumn(
                              label: Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: Text("To Surah",style: TextStyle(
                                    fontFamily: 'Trial',
                                    fontSize: 13,fontWeight: FontWeight.w600,color: ConstColors.primaryColor),),
                              )),
                          DataColumn(
                              label: Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: Text("Actions",style: TextStyle(
                                    fontFamily: 'Trial',
                                    fontSize: 13,fontWeight: FontWeight.w600,color: ConstColors.primaryColor),),
                              )),

                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text("23-09-22",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w600),)),
                            DataCell(Text("Al-Fatihah",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                            DataCell(
                                Text("Al-Imran",style: TextStyle(
                                    fontFamily: 'Trial',
                                    fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)
                            ),),),
                            DataCell(
                              Row(
                                children: [
                                  FaIcon(FontAwesomeIcons.edit,color: ConstColors.secondary,size: 15,),
                                  SizedBox(width: 20,),
                                  FaIcon(FontAwesomeIcons.trashCan,color: Color(0xffFE0000),size: 15,),
                                ],
                              )
                            )


                          ]),
                          DataRow(cells: [
                            DataCell(Text("23-09-22",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w600),)),
                            DataCell(Text("Al-Fatihah",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                            DataCell(
                              Text("Al-Imran",style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)
                              ),),),
                            DataCell(
                                Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.edit,color: ConstColors.secondary,size: 15,),
                                    SizedBox(width: 20,),
                                    FaIcon(FontAwesomeIcons.trashCan,color: Color(0xffFE0000),size: 15,),
                                  ],
                                )
                            )


                          ]),
                          DataRow(cells: [
                            DataCell(Text("23-09-22",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w600),)),
                            DataCell(Text("Al-Fatihah",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                            DataCell(
                              Text("Al-Imran",style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)
                              ),),),
                            DataCell(
                                Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.edit,color: ConstColors.secondary,size: 15,),
                                    SizedBox(width: 20,),
                                    FaIcon(FontAwesomeIcons.trashCan,color: Color(0xffFE0000),size: 15,),
                                  ],
                                )
                            )


                          ]),
                          DataRow(cells: [
                            DataCell(Text("23-09-22",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w600),)),
                            DataCell(Text("Al-Fatihah",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                            DataCell(
                              Text("Al-Imran",style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)
                              ),),),
                            DataCell(
                                Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.edit,color: ConstColors.secondary,size: 15,),
                                    SizedBox(width: 20,),
                                    FaIcon(FontAwesomeIcons.trashCan,color: Color(0xffFE0000),size: 15,),
                                  ],
                                )
                            )


                          ]),
                          DataRow(cells: [
                            DataCell(Text("23-09-22",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w600),)),
                            DataCell(Text("Al-Fatihah",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                            DataCell(
                              Text("Al-Imran",style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)
                              ),),),
                            DataCell(
                                Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.edit,color: ConstColors.secondary,size: 15,),
                                    SizedBox(width: 20,),
                                    FaIcon(FontAwesomeIcons.trashCan,color: Color(0xffFE0000),size: 15,),
                                  ],
                                )
                            )


                          ]),
                          DataRow(cells: [
                            DataCell(Text("23-09-22",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w600),)),
                            DataCell(Text("Al-Fatihah",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                            DataCell(
                              Text("Al-Imran",style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)
                              ),),),
                            DataCell(
                                Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.edit,color: ConstColors.secondary,size: 15,),
                                    SizedBox(width: 20,),
                                    FaIcon(FontAwesomeIcons.trashCan,color: Color(0xffFE0000),size: 15,),
                                  ],
                                )
                            )


                          ]),
                          DataRow(cells: [
                            DataCell(Text("23-09-22",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w600),)),
                            DataCell(Text("Al-Fatihah",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                            DataCell(
                              Text("Al-Imran",style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)
                              ),),),
                            DataCell(
                                Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.edit,color: ConstColors.secondary,size: 15,),
                                    SizedBox(width: 20,),
                                    FaIcon(FontAwesomeIcons.trashCan,color: Color(0xffFE0000),size: 15,),
                                  ],
                                )
                            )


                          ]),
                          DataRow(cells: [
                            DataCell(Text("23-09-22",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w600),)),
                            DataCell(Text("Al-Fatihah",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                            DataCell(
                              Text("Al-Imran",style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)
                              ),),),
                            DataCell(
                                Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.edit,color: ConstColors.secondary,size: 15,),
                                    SizedBox(width: 20,),
                                    FaIcon(FontAwesomeIcons.trashCan,color: Color(0xffFE0000),size: 15,),
                                  ],
                                )
                            )


                          ]),
                          DataRow(cells: [
                            DataCell(Text("23-09-22",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w600),)),
                            DataCell(Text("Al-Fatihah",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                            DataCell(
                              Text("Al-Imran",style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)
                              ),),),
                            DataCell(
                                Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.edit,color: ConstColors.secondary,size: 15,),
                                    SizedBox(width: 20,),
                                    FaIcon(FontAwesomeIcons.trashCan,color: Color(0xffFE0000),size: 15,),
                                  ],
                                )
                            )


                          ]),
                          DataRow(cells: [
                            DataCell(Text("23-09-22",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w600),)),
                            DataCell(Text("Al-Fatihah",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                            DataCell(
                              Text("Al-Imran",style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)
                              ),),),
                            DataCell(
                                Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.edit,color: ConstColors.secondary,size: 15,),
                                    SizedBox(width: 20,),
                                    FaIcon(FontAwesomeIcons.trashCan,color: Color(0xffFE0000),size: 15,),
                                  ],
                                )
                            )


                          ]),
                          DataRow(cells: [
                            DataCell(Text("23-09-22",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w600),)),
                            DataCell(Text("Al-Fatihah",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                            DataCell(
                              Text("Al-Imran",style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)
                              ),),),
                            DataCell(
                                Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.edit,color: ConstColors.secondary,size: 15,),
                                    SizedBox(width: 20,),
                                    FaIcon(FontAwesomeIcons.trashCan,color: Color(0xffFE0000),size: 15,),
                                  ],
                                )
                            )


                          ]),
                          DataRow(cells: [
                            DataCell(Text("23-09-22",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w600),)),
                            DataCell(Text("Al-Fatihah",style: TextStyle(
                                fontFamily: 'Trial',
                                fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)),)),
                            DataCell(
                              Text("Al-Imran",style: TextStyle(
                                  fontFamily: 'Trial',
                                  fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff707683)
                              ),),),
                            DataCell(
                                Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.edit,color: ConstColors.secondary,size: 15,),
                                    SizedBox(width: 20,),
                                    FaIcon(FontAwesomeIcons.trashCan,color: Color(0xffFE0000),size: 15,),
                                  ],
                                )
                            )


                          ]),




                        ]),
                  ),
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
