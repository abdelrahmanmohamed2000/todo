import 'package:flutter/material.dart';
import 'package:todo/ui/login/login_screen.dart';
import 'package:todo/ui/register/register_screen.dart';

class SplashScreen extends StatelessWidget {
static const String routname="splash";



  @override
  Widget build(BuildContext context) {
     Future.delayed(Duration(seconds: 1),() {
       Navigator.pushReplacementNamed(context, RegisterScreen.routName);
     },);

    return Scaffold(
      body: Container(

        child: Image.asset("assets/images/splash.png",
        fit: BoxFit.fill,
        width: double.infinity,
          height: double.infinity,
        ),


      ),
    );
  }
}
