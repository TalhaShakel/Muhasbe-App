import 'package:email_auth/email_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhasebe_app/Components/ConstColors.dart';
import 'package:muhasebe_app/Components/text_theme.dart';
import 'package:muhasebe_app/screens/Onboarding/otp_screen.dart';

class ForgetPassword extends StatefulWidget {

  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController _email = TextEditingController();
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
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 34,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff3B4056).withOpacity(0.10),
                                blurRadius: 10,
                                spreadRadius: 0,
                                offset: Offset(
                                  4,
                                  4,
                                )),
                          ],
                          gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Color(0xffF8FBFF),
                                Color(0xffDBE0E7),
                              ])),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xff808289),
                            size: 24,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
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
                "Forgot Password",
                style: AppTextTheme.titles,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                " Please enter your email address linked to \n    your account. We will send OTP to this \n           email account for verification.",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Book',
                    color: Color(0xff8B9EB0)),
              ),
              SizedBox(
                height: 34,
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
                        //           r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                        //       .hasMatch(value)) {
                        //     return "Enter the valid Email";
                        //   } else {
                        //     return null;
                        //   }
                        // },
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: AppTextTheme.hintTxt,
                          contentPadding:
                              EdgeInsets.only(bottom: 10, left: 10),
                          border: InputBorder.none,
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
                  onTap: () async {
                    if(RegExp(
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$'
                    ).hasMatch(_email.value.text)
                    ){
                      EmailAuth.sessionName = 'Test Session';
                      var res = await EmailAuth.sendOtp(
                          receiverMail: _email.text);
                      if(res) {
                        print('Otp Sent');
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //     SnackBar(content: Text("Otp Sent Successfully")));
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>
                                OtpScreen(mail: _email.text)));
                      } else {
                        print('We could not sent Otp');
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content:Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: ConstColors.background.withOpacity(0.50),
                                  border: Border.all(color: ConstColors.primaryColor),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 10,),
                                      Text("Error",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Bold',fontWeight: FontWeight.w700
                                      ),),
                                      SizedBox(height: 5,),
                                      Text("We couldn't sent OTP",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Book',fontWeight: FontWeight.w500
                                      ),),
                                    ],
                                  ),
                                ),
                              ),
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              behavior: SnackBarBehavior.floating,
                              duration: Duration(seconds: 2),
                              margin:  EdgeInsets.only(
                                  bottom: MediaQuery.of(context).size.height - 130,
                                  right: 20,
                                  left: 20),
                            )
                        );
                      }
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content:Container(
                              height: 60,
                              decoration: BoxDecoration(
                                color: ConstColors.background.withOpacity(0.50),
                                border: Border.all(color: ConstColors.primaryColor),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),
                                    Text("Error",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Bold',fontWeight: FontWeight.w700
                                    ),),
                                    SizedBox(height: 5,),
                                    Text("Enter the valid email",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Book',fontWeight: FontWeight.w500
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            behavior: SnackBarBehavior.floating,
                            duration: Duration(seconds: 2),
                            margin:  EdgeInsets.only(
                                bottom: MediaQuery.of(context).size.height - 130,
                                right: 20,
                                left: 20),
                          )
                      );
                    }

                    // EmailAuth.sessionName = 'Test Session';
                    // var res = await EmailAuth.sendOtp(
                    //     receiverMail: _email.text);
                    // if (res) {
                    //   print('Otp sent');
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //       SnackBar(content: Text("Otp Sent Successfully")));
                    //   Navigator.push(context, MaterialPageRoute(
                    //       builder: (context) =>
                    //           OtpScreen(mail: _email.text)));
                    // } else {
                    //   print('We could not sent Otp');
                    //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    //       content: Text(
                    //           "We couldn't sent Otp Enter Email Again")));
                    // }
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => OtpScreen(mail: '',)));
                  },
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
                          'Send',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Trial',
                              color: Color(0xffC26D72)),
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
    );
  }
}
