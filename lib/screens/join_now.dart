import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkdln/screens/landing_page.dart';
import 'package:get/get.dart';
import 'package:linkdln/screens/sign_in.dart';
import 'package:linkdln/screens/user_page.dart';

class JoinNow extends StatelessWidget {
  get kText1 => LandingPage.kText1.copyWith(fontSize: 30.sp,);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(620,1100),
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
                        padding:  EdgeInsets.only(top: 70.h,bottom: 1.h),
                        child: SizedBox(child: Text('Join LinkedIn',textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.black,fontSize: 55.sp,fontWeight: FontWeight.w500),
                        ),width: double.infinity),
                      ),
                      Row(children: [
                        Text('or',style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.w500),),
                        TextButton(onPressed: (){
                          Get.to(()=>SignIn());
                        }, child: Text('sign in',style: TextStyle(fontSize: 24.sp,
                            fontWeight: FontWeight.w500),),)
                      ],),
                      MyTextField(top: 28.h, labelText: 'Email or Phone*', autoFocus: false,),
                      Padding(
                        padding:  EdgeInsets.only(top: 60.h),
                        child: RoundedButton(child: Text('Continue',style: TextStyle(fontSize: 30.sp,),
                          textAlign:TextAlign.center ,), color: Color(0xff0C61BF),
                            borderColor: Color(0xff0C61BF), overlayColor: Colors.black54, onPressed: (){
                              Get.to(()=>UserPage());
                            }),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 20.h),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              color: Colors.black12,
                              width: 240.w,height: 2.h,
                            ),
                            Text('or',style: TextStyle(color: Colors.black54,fontSize: 20),),
                            Container(
                              color: Colors.black12,
                              width: 240.w,height: 2.h,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 20.h),
                        child: RoundedButton(color: Colors.white,
                          borderColor: Colors.black,
                          overlayColor: Colors.black12,
                          onPressed: (){},
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [  Image.asset('lib/assets/images/7123025_logo_google_g_icon.png',height:40.h,width: 40.h,),
                              SizedBox(width: 10),
                              Text('Continue with Google',style: LandingPage.kText2.copyWith(color: Colors.black54),)
                            ],
                          ),),
                      ),
                    ],
                  ),
                ),]
              ),
            ),
          ),
        );        },
    );
  }
}

class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key, required this.top,required this.labelText,required this.autoFocus
  }) : super(key: key);
  double top;String labelText; bool autoFocus;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: top),
      child: TextField(cursorColor:Colors.black54,decoration: InputDecoration(

        labelText: labelText,labelStyle: TextStyle(fontSize: 30.sp,color: Colors.black54),
        contentPadding: EdgeInsets.all(1),focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black54,width: 2.5)
      ),
      ),style: TextStyle(fontSize: 30.sp,),autofocus:autoFocus ,),
    );
  }
}