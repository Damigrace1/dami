import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkdln/screens/join_now.dart';
import 'package:linkdln/screens/landing_page.dart';
import 'package:get/get.dart';
import 'package:linkdln/screens/user_page.dart';

class SignIn extends StatelessWidget {
  get kText1 => LandingPage.kText1.copyWith(fontSize: 30.sp,fontWeight: FontWeight.w500);
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
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('Linked',style:TextStyle(fontWeight: FontWeight.bold,
                                  color:Color(0xff0C61BF),fontSize: 30.sp ) ,),
                              Container(padding: EdgeInsets.symmetric(horizontal: 5.w),margin: EdgeInsets.only(left: 4.w),
                                decoration: BoxDecoration(
                                    color:Color(0xff0C61BF),
                                    borderRadius: BorderRadius.circular(4)
                                ),child: Text('in',style:kText1.copyWith(color: Colors.white),),)
                            ],
                          ),
                          TextButton(onPressed: (){Get.to(()=>JoinNow());}, child: Text('Join now',style: TextStyle(fontSize: 25.sp,color: Color(0xff0C61BF)),))
                        ],
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 10.h),
                        child: SizedBox(child: Text('Sign in',textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.black,fontSize: 55.sp,fontWeight: FontWeight.w500),
                        ),width: double.infinity),
                      ),
                      MyTextField(top: 30.h, hintText: 'Email or phone', autoFocus: false,),
                      PasswordField(top:  30.h, hintText: 'Password', autoFocus: false,),
                      Padding(
                        padding:  EdgeInsets.only(top: 15.h),
                        child: Align(alignment: Alignment.centerLeft,
                          child: TextButton(onPressed: (){}, child: Text('Forgot password?',style: TextStyle(
                              color: Color(0xff0C61BF),fontSize: 25.sp
                          ),)),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 5.h),
                        child: RoundedButton(child: Text('Continue',style: TextStyle(fontSize: 30.sp,),
                          textAlign:TextAlign.center ,), color: Color(0xff0C61BF),
                            borderColor: Color(0xff0C61BF), overlayColor: Colors.black54, onPressed: (){
                              Get.to(()=>UserPage());
                            }),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 10.h),
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
                        padding:  EdgeInsets.only(top: 10.h),
                        child: RoundedButton(color: Colors.white,
                          borderColor: Colors.black,
                          overlayColor: Colors.black12,
                          onPressed: (){},
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('lib/assets/images/7123025_logo_google_g_icon.png',height:40.h,width: 40.h,),
                              SizedBox(width: 10),
                              Text('Sign in with Google',style: kText1.copyWith(color: Color(0xFF5C5C5C)),)
                            ],
                          ),),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 15.h),
                        child: RoundedButton(color: Colors.white,
                          borderColor: Colors.black,
                          overlayColor: Colors.black12,
                          onPressed: (){},
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [Image.asset('lib/assets/images/images (11).png',height:40.h,width: 40.h,),
                              SizedBox(width: 10),
                              Text('Sign in with Apple',style: kText1.copyWith(color: Color(0xFF5C5C5C),))
                            ],
                          ),),
                      )
                    ],
                  ),
                ),]
              ),
            ),
          ),
        );
        },
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
      child: TextField(cursorColor:Colors.black54,decoration: InputDecoration(

        labelText: hintText,labelStyle: TextStyle(fontSize: 30.sp,),
        contentPadding: EdgeInsets.all(1),focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black54,width: 2.5)
      ),
      ),style: TextStyle(fontSize: 30.sp,),autofocus:autoFocus ,),
    );
  }
}

Icon icon=Icon(CupertinoIcons.eye_fill);
bool isIconPressed=false;bool obscureText=true;
class PasswordField extends StatefulWidget {
  PasswordField({
    Key? key, required this.top,required this.hintText,required this.autoFocus
  }) : super(key: key);
  double top;String hintText; bool autoFocus;
  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: widget.top),
      child: TextField(cursorColor:Colors.black54,decoration: InputDecoration(
        suffixIcon: IconButton(color: Colors.black54, onPressed: () {
          if(isIconPressed==false){
            isIconPressed=true;
            obscureText=false;
            icon=Icon(CupertinoIcons.eye_slash_fill,size: 35.sp,);
            setState(() {});return;}
          icon=Icon(CupertinoIcons.eye_fill,size: 35.sp);
          isIconPressed=false;
          obscureText=true;
          setState(() {});
        },
            icon: icon),suffixIconColor: Colors.black54,
        labelText: widget.hintText,labelStyle: TextStyle(fontSize: 30.sp),
        contentPadding: EdgeInsets.zero,focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.black54,width: 2.5),
      ),
      ),style: TextStyle(fontSize: 30.sp,),autofocus:widget.autoFocus ,
        obscureText: obscureText,),
    );
  }
}



