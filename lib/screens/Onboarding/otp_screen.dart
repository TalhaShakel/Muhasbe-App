import 'package:email_auth/email_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhasebe_app/Components/ConstColors.dart';
import 'package:muhasebe_app/Components/text_theme.dart';
import 'package:muhasebe_app/screens/Main/Home2.dart';
import 'package:pinput/pinput.dart';
class OtpScreen extends StatelessWidget {
  String mail;
   OtpScreen({Key? key,required this.mail}) : super(key: key);
  TextEditingController _pin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: ConstColors.background,
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width: 34,),
                GestureDetector(
                  onTap: (){
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
                              offset: Offset(4,4,)),
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [
                              Color(0xffF8FBFF),
                              Color(0xffDBE0E7),
                            ])
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.arrow_back_ios,color: Color(0xff808289),size: 24,),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 36,),
            Text("OTP Verification",style:       TextStyle(
              color: ConstColors.primaryColor,
              fontSize: 28,
              fontWeight: FontWeight.w600,
              fontFamily: 'Bold'),),
            SizedBox(height: 60,),
            Text('Enter the verification code,\n we have just sent on your \n           email address',style: TextStyle(
                fontSize: 16,
                fontFamily: 'Book',
                color: Color(0xff8B9EB0)),),
            // Text("OTP Verify",style: TextStyle(
            //     fontFamily: 'Trial',
            //     fontSize: 24,fontWeight: FontWeight.w400),),
            // SizedBox(height: 13,),
            // Text("You will get an OTP in",style: TextStyle(
            //     fontFamily: 'Trial',
            //     fontSize: 17,fontWeight: FontWeight.w400),),
            // SizedBox(height: 8,),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text("admin@gmail.com",style: TextStyle(
            //         fontFamily: 'Book',
            //         fontSize: 17,fontWeight: FontWeight.w400),),
            //     SizedBox(width: 5,),
            //     Text("Change",style: TextStyle(
            //         fontFamily:'CodeNext-Trial',
            //         color:Color(0xffFE0000),fontSize: 13,fontWeight: FontWeight.w700),),
            //   ],
            // ),
            // SizedBox(height: 55,),
            SizedBox(height: 40,),
            Pinput(
              controller: _pin,
              defaultPinTheme: PinTheme(
                height: 40,
                width: 40,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: ConstColors.primaryColor),
                ),
              ),
              focusedPinTheme: PinTheme(
                  height: 45,
                  width: 45,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: ConstColors.primaryColor)
                  )
              ),
              submittedPinTheme: PinTheme(
                height: 40,
                width: 40,
                decoration:  BoxDecoration(
                    color: ConstColors.secondary.withOpacity(0.30),
                    borderRadius: BorderRadius.circular(5)
                ),
              ),
              length: 6,
            ),
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn’t receive code?",style:TextStyle(
                    fontSize: 16,
                    fontFamily: 'Book',
                    color: Color(0xff8B9EB0)),),
                SizedBox(width: 5,),
                Text("Resend",style: TextStyle(
                    fontFamily: 'CodeNext-Trial',
                    fontSize: 18,fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.only(left: 75,right: 75),
              child: GestureDetector(
                onTap: ()
                async
                {
                  var res = EmailAuth.validate(receiverMail: mail, userOTP: _pin.text);
                  if(res){
                    print('Email Verified');
                    // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Email Id is Verified")));
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home2()));
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePassword()));
                  }else{
                    print('Invalid Otp');
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
                                  Text("Invalid OTP",style: TextStyle(color: ConstColors.primaryColor,fontFamily: 'Book',fontWeight: FontWeight.w500
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
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>Home2()));
                },
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
                      child: const Text('Verify',style: TextStyle(
                          fontFamily: 'Book',
                          fontSize: 17,fontWeight: FontWeight.w400,color:Color(0xffC26D72)),),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
