import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhasebe_app/screens/Main/activity.dart';

import '../../Components/ConstColors.dart';
import '../../Components/text_theme.dart';
import '../Main/Home2.dart';
import 'Home.dart';
import 'account.dart';
import 'activity_dashboard.dart';
class EditAccount extends StatefulWidget {
  const EditAccount({Key? key}) : super(key: key);

  @override
  State<EditAccount> createState() => _EditAccountState();
}

class _EditAccountState extends State<EditAccount> {
  TextEditingController _password = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _time = TextEditingController();
  bool passwordObscure = true;
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
                            padding: const EdgeInsets.only(top: 25),
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
                                  height: 40,
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
                      height: 30,
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
                      height: 30,
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
      body:Container(
        height: double.infinity,
        width: double.infinity,
        color: ConstColors.background,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text("Edit Account",style: AppTextTheme.titles,),
              SizedBox(height: 30,),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0,right: 0),
                    child: Container(
                      width: 135,
                      height: 135,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
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
                        padding: const EdgeInsets.only(left: 0,right: 0),
                        child: Container(
                            width: 133,
                            height: 133,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            alignment: Alignment.center,
                            child:FaIcon(FontAwesomeIcons.user,color: ConstColors.primaryColor,size: 60,)
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 95,left: 95),
                    child: Container(
                      height: 33,
                      width: 33,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ConstColors.secondary
                      ),
                      child: Center(
                        child: Icon(Icons.camera_alt_outlined,color: Colors.white,size: 15,),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 36,),
                  Text("Name",style: AppTextTheme.labels,),
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
                        controller: _name,
                        cursorColor: Colors.black54,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          hintText: "Name",
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
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 36,),
                  Text("Username",style: AppTextTheme.labels,),
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
                        controller: _username,
                        cursorColor: Colors.black54,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: AppTextTheme.hintTxt,
                          contentPadding: EdgeInsets.only(bottom: 10,left: 10),
                          border: InputBorder.none,
                        ),
                        // validator: (vaL) {
                        //   return vaL!.isEmpty ? "Please Enter Username" : null;
                        // },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 36,),
                  Text("Email",style: AppTextTheme.labels,),
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
                        controller: _email,
                        cursorColor: Colors.black54,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        // validator: (String? value) {
                        //   if (value!.isEmpty) {
                        //     return "Enter the email";
                        //   }
                        //   if (!RegExp(
                        //       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                        //       .hasMatch(value)) {
                        //     return "Enter the valid Email";
                        //   } else {
                        //     return null;
                        //   }
                        // },
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: AppTextTheme.hintTxt,
                          contentPadding: EdgeInsets.only(bottom: 10,left: 10),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 36,),
                  Text("Password",style: AppTextTheme.labels,),
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
                      child: TextFormField(
                        controller: _password,
                        cursorColor: Colors.black54,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        // validator: (String? value) {
                        //   if (value!.isEmpty) {
                        //     return "Enter the Password";
                        //   }
                        //   if (value.length < 6 ) {
                        //     return "Password too short";
                        //   } else {
                        //     return null;
                        //   }
                        // },
                        // validator: (val) =>
                        // val!.length < 6 ? 'Password too short.' : null,
                        obscureText: passwordObscure,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: AppTextTheme.hintTxt,
                          contentPadding: EdgeInsets.only(top: 4,left: 10),
                          border: InputBorder.none,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  passwordObscure = !passwordObscure;
                                });
                              },
                              icon: passwordObscure
                                  ? const Icon(
                                Icons.visibility_off_sharp,
                                color: Color(0xff90A4AE),
                                size: 16,
                              )
                                  : const Icon(
                                Icons.visibility,
                                color: Color(0xff90A4AE),
                                size: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 36,),
                  Text("Time Zone",style: AppTextTheme.labels,),
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
                      child: TextFormField(
                        controller: _time,
                        cursorColor: Colors.black54,
                        autovalidateMode: AutovalidateMode.onUserInteraction,

                        // validator: (val) =>
                        // val!.length < 6 ? 'Password too short.' : null,
                        obscureText: passwordObscure,
                        decoration: InputDecoration(
                          hintText: "UAE",
                          hintStyle: AppTextTheme.hintTxt,
                          contentPadding: EdgeInsets.only(top: 0,left: 10),
                          border: InputBorder.none,
                        ),
                        // validator: (vaL) {
                        //   return vaL!.isEmpty ? "Please Select TimeZone" : null;
                        // },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              GestureDetector(
                // onTap: (){
                //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity()));
                // },
                child: Padding(
                  padding: const EdgeInsets.only(left: 121,right: 121),
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
                        child: Text('Update',style: TextStyle(
                            fontFamily: 'Trial',
                            fontSize: 17,fontWeight: FontWeight.w400,color:ConstColors.secondary),),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 27,),

            ],
          ),
        ),
      ),
    );
  }
}
