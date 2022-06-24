import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkdln/screens/join.dart';
import 'package:get/get.dart';
import 'package:linkdln/screens/sign_in.dart';
class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);
  static final kText1=TextStyle(fontFamily:'lib/assets/fonts/community-cufonfonts',
      color: Color(0xff0C61BF),fontSize: 74.sp,fontWeight: FontWeight.w800);
  static final kText2= TextStyle(fontSize: 30.sp,color: Colors.white,
      fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(720,1280),
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
      home: SafeArea(
        child: Scaffold(resizeToAvoidBottomInset: false,
          body: ListView(
            children:[Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children:  [
                    Padding(
                      padding:  EdgeInsets.only(top: 200.h),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Linked',style:kText1 ,),
                          Container(child: Text('in',style:kText1.copyWith(color: Colors.white),),
                            padding: EdgeInsets.symmetric(horizontal: 5.h),margin: EdgeInsets.only(left: 4.h),
                            decoration: BoxDecoration(
                                color:Color(0xff0C61BF),
                                borderRadius: BorderRadius.circular(4)
                            ),)
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 130.h),
                      child: Text('Join a trusted community of\n 800M professionals',
                        style: TextStyle(fontSize: 34.sp,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 227.h),
                      child: RoundedButton(color: Color(0xff0C61BF,),
                        borderColor: Color(0xff0C61BF),
                        overlayColor: Colors.black54,
                        onPressed:(){Get.to(()=>Join());},
                        child: Text('Join now',style:kText2,),),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 50.h),
                      child: RoundedButton(color: Colors.white,
                        borderColor: Colors.black,
                        overlayColor: Colors.black12,
                        onPressed: (){},
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('lib/assets/images/7123025_logo_google_g_icon.png',height:50.h,width: 50.h,),
                            SizedBox(width: 10),
                            Text('Continue with Google',style: kText2.copyWith(color: Colors.black54),)
                          ],
                        ),),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 23.h),
                      child: SizedBox(width: double.infinity,
                        child: TextButton(onPressed: (){Get.to(()=>SignIn());}, child: Text('Sign in',
                          style: kText2.copyWith(color: Color(0xff0C61BF)),)),
                      ),
                    ),],

                ),
              ),
            ),]
          ),
        ),
      ),
    ); },
    );
  }
}

class RoundedButton extends StatelessWidget {
Color color;
Color borderColor;
Color overlayColor;
Widget child;
Function onPressed;
RoundedButton({required this.child,required this.color,required this.borderColor,
  required this.overlayColor,required this.onPressed}){}
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity,height: 82.h,
      child: ElevatedButton(onPressed:()=>onPressed(),
        style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.all(5)),
          overlayColor: MaterialStateProperty.all(overlayColor),
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: borderColor)
          ))
        ),
        child: child,
      ),
    );
  }
}