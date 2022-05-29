import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prezenty/pages/OTPVerification.dart';
import 'package:prezenty/pages/login.dart';
import 'package:prezenty/pages/signup.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
           designSize: const Size(325, 667),
     builder: (_,child) => MaterialApp(
        
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              body: Stack(
            children:  [
              Signup(),
            ],
          ))),
    );
  }
}

