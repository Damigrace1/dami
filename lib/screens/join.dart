
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkdln/screens/join2.dart';
import 'package:linkdln/screens/landing_page.dart';
import 'package:get/get.dart';

import 'join_now.dart';
class Join extends StatelessWidget {
  get kText1 => LandingPage.kText1.copyWith(fontSize: 30.sp);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(720,1280),
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          home: Scaffold(resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: ListView(
                children: [Padding(
                  padding:  EdgeInsets.only(left: 20.w,top: 20.h,right: 20.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Linked',style:kText1 ,),
                          Container(padding: EdgeInsets.symmetric(horizontal: 5.w),margin: EdgeInsets.only(left: 4.w),
                            decoration: BoxDecoration(
                                color:Color(0xff0C61BF),
                                borderRadius: BorderRadius.circular(4)
                            ),child: Text('in',style:kText1.copyWith(color: Colors.white),),)
                        ],
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 80.h),
                        child: SizedBox(width: double.infinity, child: Text('Add your name',textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.black,fontSize: 50.sp,fontWeight: FontWeight.w500),
                        )),
                      ),
                      MyTextField(top: 65.h, hintText: 'First name*', autoFocus: true,),
                      MyTextField(top:  55.h, hintText: 'Last name*', autoFocus: false,),
                      Padding(
                        padding:  EdgeInsets.only(top: 60.h),
                        child: RoundedButton(child: Text('Continue',style: TextStyle(fontSize: 30.sp,),
                          textAlign:TextAlign.center ,), color: Color(0xff0C61BF),
                            borderColor: Color(0xff0C61BF), overlayColor: Colors.black54, onPressed: (){
                              Get.to(()=>Join2());;
                            }),
                      )
                    ],
                  ),
                ),]
              ),
            ),
          ),
        ); },
    );
  }
}

class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key, required this.top,required this.hintText,required this.autoFocus
  }) : super(key: key);
  double top;String hintText; bool autoFocus;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: top),
      child: TextField(cursorColor:Colors.black54,decoration: InputDecoration(labelText: hintText,
        labelStyle: TextStyle(fontSize: 30.sp,color: Colors.black54),
        contentPadding: EdgeInsets.all(5),focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black54)
        ),
      ),style: TextStyle(fontSize: 30.sp,),autofocus:autoFocus ,),
    );
  }
}
