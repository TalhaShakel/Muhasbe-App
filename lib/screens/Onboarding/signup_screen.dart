import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhasebe_app/Components/ConstColors.dart';
import 'package:muhasebe_app/screens/Main/Home2.dart';
import 'package:muhasebe_app/screens/Onboarding/login_scree.dart';
import 'package:csc_picker/csc_picker.dart';

import '../../Components/text_theme.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _password = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _time = TextEditingController();
  bool passwordObscure = true;

  String defaultvalue = "";
  String countryValue = "";
  List dropDownlistData = [
    {"title": "Saudi", "value": "1"},
    {"title": "China", "value": "2"},
    {"title": "India", "value": "3"},
  ];
  void cscpicker() async {
    await CSCPicker(
      onCountryChanged: (value) {
        setState(() {
          countryValue = value;
        });
      },
      flagState: CountryFlag.DISABLE,
      showStates: false,
      showCities: false,
      countryDropdownLabel: "Country:  $countryValue",
      selectedItemStyle: AppTextTheme.hintTxt,
      dropdownHeadingStyle: AppTextTheme.labels,
      dropdownItemStyle: AppTextTheme.labels,
    );
  }

  void initState() {
    super.initState();
    cscpicker();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: ConstColors.background,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Container(
                height: 145,
                width: 145,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(46),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff000000).withOpacity(0.15),
                          blurRadius: 20,
                          spreadRadius: 0,
                          offset: Offset(0, 0)),
                    ]),
                child: Image.asset('assets/images/applogo.png'),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Sign Up',
                style: AppTextTheme.titles,
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
                    "Name",
                    style: AppTextTheme.labels,
                  ),
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
                        controller: _name,
                        cursorColor: Colors.black54,
                        keyboardType: TextInputType.name,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle: AppTextTheme.hintTxt,
                          contentPadding: EdgeInsets.only(bottom: 10, left: 10),
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
              SizedBox(
                height: 20,
              ),
              // Row(
              //   children: [
              //     SizedBox(
              //       width: 36,
              //     ),
              //     Text(
              //       "Username",
              //       style: AppTextTheme.labels,
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 35, right: 35),
              //   child: Container(
              //     width: double.infinity,
              //     height: 40,
              //     alignment: Alignment.center,
              //     decoration: BoxDecoration(
              //         borderRadius: const BorderRadius.all(Radius.circular(4)),
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
              //         height: 38,
              //         decoration: const BoxDecoration(
              //           borderRadius: BorderRadius.all(Radius.circular(3)),
              //           color: Colors.white,
              //         ),
              //         alignment: Alignment.center,
              //         child: TextFormField(
              //           controller: _username,
              //           cursorColor: Colors.black54,
              //           autovalidateMode: AutovalidateMode.onUserInteraction,
              //           decoration: InputDecoration(
              //             hintText: "Username",
              //             hintStyle: AppTextTheme.hintTxt,
              //             contentPadding: EdgeInsets.only(bottom: 10, left: 10),
              //             border: InputBorder.none,
              //           ),
              //           // validator: (vaL) {
              //           //   return vaL!.isEmpty ? "Please Enter Username" : null;
              //           // },
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              Row(
                children: [
                  SizedBox(
                    width: 36,
                  ),
                  Text(
                    "Email ID",
                    style: AppTextTheme.labels,
                  ),
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
                        keyboardType: TextInputType.emailAddress,
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
                          contentPadding: EdgeInsets.only(bottom: 10, left: 10),
                          border: InputBorder.none,
                        ),
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
                    "Password",
                    style: AppTextTheme.labels,
                  ),
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
                      child: TextFormField(
                        controller: _password,
                        keyboardType: TextInputType.visiblePassword,
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
                          contentPadding: EdgeInsets.only(top: 3, left: 10),
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
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 36,
                  ),
                  Text(
                    "Time Zone",
                    style: AppTextTheme.labels,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35),
                child: GestureDetector(
                  child: Container(
                    height: 57,
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
                      child: GestureDetector(
                        // onTap: (){
                        //   showCountryPicker(
                        //     context: context,
                        //     showPhoneCode: true, // optional. Shows phone code before the country name.
                        //     onSelect: (Country country) {
                        //       setState(() {
                        //         country = country;
                        //       });
                        //       print('Select country: ${country.displayName}');
                        //     },
                        //   );
                        // },

                        child: Container(
                          height: 55,
                          alignment: Alignment.center,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.white,
                          ),
                          child: DropdownButtonHideUnderline(
                            child: CSCPicker(
                              onCountryChanged: (value) {
                                setState(() {
                                  countryValue = value;
                                });
                              },
                              flagState: CountryFlag.DISABLE,
                              showStates: false,
                              showCities: false,
                              countryDropdownLabel: "Country:  $countryValue",
                              selectedItemStyle: AppTextTheme.hintTxt,
                              dropdownHeadingStyle: AppTextTheme.labels,
                              dropdownItemStyle: AppTextTheme.labels,
                            ),
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
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 75, right: 75),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => LoginScreen());
                  },
                  // onTap: () async {
                  //   if(_email.text.isEmpty){
                  //     ScaffoldMessenger.of(context).showSnackBar(
                  //         SnackBar(
                  //           content:Container(
                  //           height: 60,
                  //           decoration: BoxDecoration(
                  //             color: ConstColors.background.withOpacity(0.50),
                  //             border: Border.all(color: ConstColors.primaryColor),
                  //             borderRadius: BorderRadius.circular(10),
                  //           ),
                  //           child: Padding(
                  //             padding: const EdgeInsets.only(left: 10),
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 SizedBox(height: 10,),
                  //                 Text("Error",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Bold',fontWeight: FontWeight.w700
                  //                 ),),
                  //                 SizedBox(height: 5,),
                  //                 Text("Email should not be empty",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Book',fontWeight: FontWeight.w500
                  //                 ),),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //           backgroundColor: Colors.transparent,
                  //           elevation: 0,
                  //           behavior: SnackBarBehavior.floating,
                  //           duration: Duration(seconds: 2),
                  //           margin:  EdgeInsets.only(
                  //               bottom: MediaQuery.of(context).size.height - 130,
                  //               right: 20,
                  //               left: 20),
                  //         )
                  //     );
                  //   }
                  //   else if(_name.text.isEmpty){
                  //     ScaffoldMessenger.of(context).showSnackBar(
                  //         SnackBar(content:Container(
                  //           height: 60,
                  //           decoration: BoxDecoration(
                  //             color: ConstColors.background.withOpacity(0.50),
                  //             border: Border.all(color: ConstColors.primaryColor),
                  //             borderRadius: BorderRadius.circular(10),
                  //           ),
                  //           child: Padding(
                  //             padding: const EdgeInsets.only(left: 10),
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 SizedBox(height: 10,),
                  //                 Text("Error",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Bold',fontWeight: FontWeight.w700
                  //                 ),),
                  //                 SizedBox(height: 5,),
                  //                 Text("Name should not be empty",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Book',fontWeight: FontWeight.w500
                  //                 ),),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //           backgroundColor: Colors.transparent,
                  //           elevation: 0,
                  //           behavior: SnackBarBehavior.floating,
                  //           duration: Duration(seconds: 2),
                  //           margin:  EdgeInsets.only(
                  //               bottom: MediaQuery.of(context).size.height - 130,
                  //               right: 20,
                  //               left: 20),
                  //         )
                  //     );
                  //   }
                  //   else if(_password.text.isEmpty){
                  //     ScaffoldMessenger.of(context).showSnackBar(
                  //         SnackBar(content:Container(
                  //           height: 60,
                  //           decoration: BoxDecoration(
                  //             color: ConstColors.background.withOpacity(0.50),
                  //             border: Border.all(color: ConstColors.primaryColor),
                  //             borderRadius: BorderRadius.circular(10),
                  //           ),
                  //           child: Padding(
                  //             padding: const EdgeInsets.only(left: 10),
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 SizedBox(height: 10,),
                  //                 Text("Error",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Bold',fontWeight: FontWeight.w700
                  //                 ),),
                  //                 SizedBox(height: 5,),
                  //                 Text("Password should not be empty",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Book',fontWeight: FontWeight.w500
                  //                 ),),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //           backgroundColor: Colors.transparent,
                  //           elevation: 0,
                  //           behavior: SnackBarBehavior.floating,
                  //           duration: Duration(seconds: 2),
                  //           margin:  EdgeInsets.only(
                  //               bottom: MediaQuery.of(context).size.height - 130,
                  //               right: 20,
                  //               left: 20),
                  //         )
                  //     );
                  //   }
                  //   else if(countryValue.isEmpty){
                  //     ScaffoldMessenger.of(context).showSnackBar(
                  //         SnackBar(content:Container(
                  //           height: 60,
                  //           decoration: BoxDecoration(
                  //             color: ConstColors.background.withOpacity(0.50),
                  //             border: Border.all(color: ConstColors.primaryColor),
                  //             borderRadius: BorderRadius.circular(10),
                  //           ),
                  //           child: Padding(
                  //             padding: const EdgeInsets.only(left: 10),
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 SizedBox(height: 10,),
                  //                 Text("Error",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Bold',fontWeight: FontWeight.w700
                  //                 ),),
                  //                 SizedBox(height: 5,),
                  //                 Text("Please select a Time Zone ",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Book',fontWeight: FontWeight.w500
                  //                 ),),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //           backgroundColor: Colors.transparent,
                  //           elevation: 0,
                  //           behavior: SnackBarBehavior.floating,
                  //           duration: Duration(seconds: 2),
                  //           margin:  EdgeInsets.only(
                  //               bottom: MediaQuery.of(context).size.height - 130,
                  //               right: 20,
                  //               left: 20),
                  //         )
                  //     );
                  //   }
                  //  else if(_password.text.length < 6){
                  //     ScaffoldMessenger.of(context).showSnackBar(
                  //         SnackBar(content:Container(
                  //           height: 60,
                  //           decoration: BoxDecoration(
                  //             color: ConstColors.background.withOpacity(0.50),
                  //             border: Border.all(color: ConstColors.primaryColor),
                  //             borderRadius: BorderRadius.circular(10),
                  //           ),
                  //           child: Padding(
                  //             padding: const EdgeInsets.only(left: 10),
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 SizedBox(height: 10,),
                  //                 Text("Error",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Bold',fontWeight: FontWeight.w700
                  //                 ),),
                  //                 SizedBox(height: 5,),
                  //                 Text("Enter atleast six digits password",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Book',fontWeight: FontWeight.w500
                  //                 ),),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //           backgroundColor: Colors.transparent,
                  //           elevation: 0,
                  //           behavior: SnackBarBehavior.floating,
                  //           duration: Duration(seconds: 2),
                  //           margin:  EdgeInsets.only(
                  //               bottom: MediaQuery.of(context).size.height - 130,
                  //               right: 20,
                  //               left: 20),
                  //         )
                  //     );
                  //   }
                  //   else if (
                  //   RegExp(
                  //       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$'
                  //   ).hasMatch(_email.value.text)
                  //   )
                  //   {
                  //     try{
                  //       await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email.text, password: _password.text);
                  //       if(FirebaseAuth.instance.currentUser!.uid.isNotEmpty){
                  //         await FirebaseFirestore.instance
                  //                     .collection("users")
                  //                     .doc(FirebaseAuth.instance.currentUser!.uid)
                  //                     .set({
                  //                   "password": _password.text,
                  //                   "email": _email.text,
                  //                   "uid": FirebaseAuth.instance.currentUser!.uid,
                  //                   "name": _name.text,
                  //                   "time": countryValue.toString(),
                  //                 });
                  //         Navigator.pushReplacement(context,
                  //                         MaterialPageRoute(builder: (context) => Home2()));
                  //       }
                  //     }on FirebaseAuthException catch(e){
                  //   if (e.code == "email-already-in-use") {
                  //     ScaffoldMessenger.of(context).showSnackBar(
                  //         SnackBar(
                  //           content:Container(
                  //           height: 60,
                  //           decoration: BoxDecoration(
                  //             color: ConstColors.background.withOpacity(0.50),
                  //             border: Border.all(color: ConstColors.primaryColor),
                  //             borderRadius: BorderRadius.circular(10),
                  //           ),
                  //           child: Padding(
                  //             padding: const EdgeInsets.only(left: 10),
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 SizedBox(height: 10,),
                  //                 Text("Error",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Bold',fontWeight: FontWeight.w700
                  //                 ),),
                  //                 SizedBox(height: 5,),
                  //                 Text("Email Already in use",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Book',fontWeight: FontWeight.w500
                  //                 ),),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //           backgroundColor: Colors.transparent,
                  //           elevation: 0,
                  //           behavior: SnackBarBehavior.floating,
                  //           duration: Duration(seconds: 2),
                  //           margin:  EdgeInsets.only(
                  //               bottom: MediaQuery.of(context).size.height - 130,
                  //               right: 20,
                  //               left: 20),
                  //         )
                  //     );
                  //         }
                  //     }catch (e) {
                  //         print(e);
                  //       }
                  //   }
                  //   else {
                  //     ScaffoldMessenger.of(context).showSnackBar(
                  //         SnackBar(
                  //           content:Container(
                  //             height: 60,
                  //             decoration: BoxDecoration(
                  //               color: ConstColors.background.withOpacity(0.50),
                  //               border: Border.all(color: ConstColors.primaryColor),
                  //               borderRadius: BorderRadius.circular(10),
                  //             ),
                  //             child: Padding(
                  //               padding: const EdgeInsets.only(left: 10),
                  //               child: Column(
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: [
                  //                   SizedBox(height: 10,),
                  //                   Text("Error",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Bold',fontWeight: FontWeight.w700
                  //                   ),),
                  //                   SizedBox(height: 5,),
                  //                   Text("Enter the valid email",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Book',fontWeight: FontWeight.w500
                  //                   ),),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //           backgroundColor: Colors.transparent,
                  //           elevation: 0,
                  //           behavior: SnackBarBehavior.floating,
                  //           duration: Duration(seconds: 2),
                  //           margin:  EdgeInsets.only(
                  //               bottom: MediaQuery.of(context).size.height - 130,
                  //               right: 20,
                  //               left: 20),
                  //         )
                  //     );
                  //   }
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
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Trial',
                              fontWeight: FontWeight.w400,
                              color: ConstColors.secondary),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Trial',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff828282)),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'CodeNext-Trial',
                            fontWeight: FontWeight.w700,
                            color: ConstColors.primaryColor),
                      )),
                ],
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
