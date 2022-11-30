import 'package:custom_check_box/custom_check_box.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inapp_notifications/flutter_inapp_notifications.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhasebe_app/Components/ConstColors.dart';
import 'package:muhasebe_app/Components/text_theme.dart';
import 'package:muhasebe_app/screens/Main/Home2.dart';
import 'package:muhasebe_app/screens/Onboarding/forget_password.dart';
import 'package:muhasebe_app/screens/Onboarding/signup_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _password = TextEditingController();
  TextEditingController _email = TextEditingController();
  bool medicine = false;
  bool passwordObscure = true;
  // void initState() {
  //   // TODO: implement initState
  //   InAppNotifications.init();
  // }

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
                'Sign In',
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
                height: 30,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgetPassword()));
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: ConstColors.primaryColor,
                        fontFamily: 'CodeNext-Trial'),
                  )),
              SizedBox(
                height: 30,
              ),
              // Row(
              //   children: [
              //     SizedBox(width: 36,),
              //     CustomCheckBox(
              //         value: medicine,
              //         // shouldShowBorder: true,
              //         borderColor: Colors.grey,
              //         checkedFillColor:
              //         ConstColors.primaryColor,
              //         uncheckedIconColor: Colors
              //             .black,
              //         uncheckedIcon: Icons.check,
              //         borderRadius: 6,
              //         borderWidth: 1,
              //         checkBoxSize: 18,
              //         onChanged: (val) {
              //           setState(() {
              //             medicine = val;
              //           });
              //         }),
              //     Text('Save password for future login',style: GoogleFonts.nunito(fontSize: 16,color: Color(0xff828282)),)
              //
              //   ],
              // ),
              SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 75, right: 75),
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
                      onTap: () {
                        Get.to(() => Home2());
                      },
                      // onTap: () async {
                      //   if(_email.text.isEmpty){
                      //     ScaffoldMessenger.of(context).showSnackBar(
                      //       SnackBar(content:Container(
                      //         height: 60,
                      //         decoration: BoxDecoration(
                      //           color: ConstColors.background.withOpacity(0.50),
                      //           border: Border.all(color: ConstColors.primaryColor),
                      //           borderRadius: BorderRadius.circular(10),
                      //         ),
                      //         child: Padding(
                      //           padding: const EdgeInsets.only(left: 10),
                      //           child: Column(
                      //             crossAxisAlignment: CrossAxisAlignment.start,
                      //             children: [
                      //               SizedBox(height: 10,),
                      //               Text("Error",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Bold',fontWeight: FontWeight.w700
                      //               ),),
                      //               SizedBox(height: 5,),
                      //               Text("Email should not be empty",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Book',fontWeight: FontWeight.w500
                      //               ),),
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //       backgroundColor: Colors.transparent,
                      //         elevation: 0,
                      //         behavior: SnackBarBehavior.floating,
                      //         duration: Duration(seconds: 2),
                      //         margin:  EdgeInsets.only(
                      //             bottom: MediaQuery.of(context).size.height - 130,
                      //             right: 20,
                      //             left: 20),
                      //       )
                      //     );
                      //   }else if(_password.text.isEmpty){
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
                      //               bottom: MediaQuery.of(context).size.height - 125,
                      //               right: 20,
                      //               left: 20),
                      //         )
                      //     );
                      //   } else  {
                      //     try{
                      //       await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email.text, password: _password.text);
                      //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Home2()));
                      //     }on FirebaseAuthException catch(e){
                      //       if(e.code=="user-not-found"){
                      //         ScaffoldMessenger.of(context).showSnackBar(
                      //             SnackBar(

                      //               content:Container(
                      //               height: 60,
                      //               decoration: BoxDecoration(
                      //                 color: ConstColors.background.withOpacity(0.50),
                      //                 border: Border.all(color: ConstColors.primaryColor),
                      //                 borderRadius: BorderRadius.circular(10),
                      //               ),
                      //               child: Padding(
                      //                 padding: const EdgeInsets.only(left: 10),
                      //                 child: Column(
                      //                   crossAxisAlignment: CrossAxisAlignment.start,
                      //                   children: [
                      //                     SizedBox(height: 10,),
                      //                     Text("Error",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Bold',fontWeight: FontWeight.w700
                      //                     ),),
                      //                     SizedBox(height: 5,),
                      //                     Text("Email not exist",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Book',fontWeight: FontWeight.w500
                      //                     ),),
                      //                   ],
                      //                 ),
                      //               ),
                      //             ),
                      //               backgroundColor: Colors.transparent,
                      //               elevation: 0,
                      //               behavior: SnackBarBehavior.floating,
                      //               duration: Duration(seconds: 2),
                      //               margin:  EdgeInsets.only(
                      //                   bottom: MediaQuery.of(context).size.height - 125,
                      //                   right: 20,
                      //                   left: 20),
                      //             )
                      //         );
                      //       }else if(e.code =="wrong-password"){
                      //         ScaffoldMessenger.of(context).showSnackBar(
                      //             SnackBar(content:Container(
                      //               height: 60,
                      //               decoration: BoxDecoration(
                      //                 color: ConstColors.background.withOpacity(0.50),
                      //                 border: Border.all(color: ConstColors.primaryColor),
                      //                 borderRadius: BorderRadius.circular(10),
                      //               ),
                      //               child: Padding(
                      //                 padding: const EdgeInsets.only(left: 10),
                      //                 child: Column(
                      //                   crossAxisAlignment: CrossAxisAlignment.start,
                      //                   children: [
                      //                     SizedBox(height: 10,),
                      //                     Text("Error",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Bold',fontWeight: FontWeight.w700
                      //                     ),),
                      //                     SizedBox(height: 5,),
                      //                     Text("Incorrect Password",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Book',fontWeight: FontWeight.w500
                      //                     ),),
                      //                   ],
                      //                 ),
                      //               ),
                      //             ),
                      //               backgroundColor: Colors.transparent,
                      //               elevation: 0,
                      //               behavior: SnackBarBehavior.floating,
                      //               duration: Duration(seconds: 2),
                      //               margin:  EdgeInsets.only(
                      //                   bottom: MediaQuery.of(context).size.height - 125,
                      //                   right: 20,
                      //                   left: 20),
                      //             )
                      //         );
                      //       }
                      //     }catch(e){
                      //       print(e);
                      //     }
                      //   }
                      //   // if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
                      //   //   try {
                      //   //     await FirebaseAuth.instance
                      //   //         .signInWithEmailAndPassword(
                      //   //             email: _email.text,
                      //   //             password: _password.text);
                      //   //     Navigator.of(context).pushAndRemoveUntil(
                      //   //         MaterialPageRoute(
                      //   //             builder: (context) => Home2()),
                      //   //         (route) => false);
                      //   //     Fluttertoast.showToast(
                      //   //         msg: "Logged In Successfully",
                      //   //         toastLength: Toast.LENGTH_SHORT,
                      //   //         gravity: ToastGravity.TOP,
                      //   //         timeInSecForIosWeb: 2,
                      //   //         backgroundColor: Colors.white,
                      //   //         textColor: ConstColors.primaryColor,
                      //   //         fontSize: 16.0,
                      //   //     );
                      //   //
                      //   //   } on FirebaseAuthException catch (e) {
                      //   //     if (e.code == "user-not-found") {
                      //   //       ScaffoldMessenger.of(context).showSnackBar(
                      //   //           SnackBar(content: Text("Email Not Exist")));
                      //   //     } else if (e.code == "wrong-password") {
                      //   //       ScaffoldMessenger.of(context).showSnackBar(
                      //   //           SnackBar(
                      //   //               content: Text("Incorrect Password")));
                      //   //     }
                      //   //   } catch (e) {
                      //   //     print(e);
                      //   //   }
                      //   // }
                      //   // else {
                      //   //   Fluttertoast.showToast(
                      //   //     msg: "Please Enter Name & Password",
                      //   //     toastLength: Toast.LENGTH_SHORT,
                      //   //     gravity: ToastGravity.TOP,
                      //   //     timeInSecForIosWeb: 2,
                      //   //     backgroundColor: Colors.green,
                      //   //     textColor: Colors.white,
                      //   //     fontSize: 16.0,
                      //   //   );
                      //   // }
                      // },

                      child: Container(
                        width: double.infinity,
                        height: 38,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Log In',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color(0xff3290FF),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Trial'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Book',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff828282)),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'CodeNext-Trial',
                            fontWeight: FontWeight.w700,
                            color: ConstColors.primaryColor),
                      ))
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
