import 'package:flutter/material.dart';
import 'package:todo/ui/login/login_screen.dart';
import 'package:todo/ui/register/register_screen.dart';
import 'package:todo/ui/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routname,
       routes:{
        SplashScreen.routname:(context) => SplashScreen(),
         LogScreen.routName:(context) => LogScreen(),
         RegisterScreen.routName:(context) => RegisterScreen()
       } ,


      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
           elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(height: 3,fontSize: 24)
        )


      ),


    );
  }
}

