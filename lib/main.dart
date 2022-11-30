import 'package:flutter/material.dart';
import 'package:flutter_inapp_notifications/flutter_inapp_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:muhasebe_app/screens/DrawerScreens/Home.dart';
import 'package:muhasebe_app/screens/Main/Home2.dart';
import 'package:muhasebe_app/screens/Main/activity.dart';
import 'package:muhasebe_app/screens/Main/additional_prayers.dart';
import 'package:muhasebe_app/screens/Main/notes.dart';
import 'package:muhasebe_app/screens/Main/prayer_tracker.dart';
import 'package:muhasebe_app/screens/Main/quran_table.dart';
import 'package:muhasebe_app/screens/Main/reports.dart';
import 'package:muhasebe_app/screens/Main/todo_list.dart';
import 'package:muhasebe_app/screens/Onboarding/forget_password.dart';
import 'package:muhasebe_app/screens/Onboarding/login_scree.dart';
import 'package:muhasebe_app/screens/Onboarding/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
            builder: InAppNotifications.init(),
          );
        });
  }
}
