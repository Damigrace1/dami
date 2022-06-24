import 'dart:async';
import 'package:flutter/material.dart';
import 'screens/landing_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize:const Size(720,1280),
      builder: (context, child){
      return MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: SplashScreen(),
          ),
        ),
      );
  });
}}



class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _MyAppState();
}

class _MyAppState extends State<SplashScreen> {
Duration duration=Duration(seconds: 2);
  @override
  void initState() {
    super.initState();
    Timer(duration,
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                LandingPage()//remove this my Landing page() and Put yours here
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: Center(child: CircleAvatar(backgroundColor:  Color(0xff0C61BF),
            radius: 140.w,
            child: Text('in',style: LandingPage.kText1.copyWith(color: Colors.white,fontSize: 205.sp),),),),
          ),
        ),
      );}
  }


