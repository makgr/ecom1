import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';
import '../Widgets/box_shadow.dart';
import '../Widgets/toolbar_with_title.dart';

class HelpSupport extends StatefulWidget {
  const HelpSupport({super.key});

  @override
  State<HelpSupport> createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarColor: Colors.white, // status bar color
      statusBarIconBrightness: Brightness.dark, // status bar icons' color
      systemNavigationBarIconBrightness:
      Brightness.light, //navigation bar icons' color
    ));
    return SafeArea(child: Scaffold(
      backgroundColor: silver_f6f6f6,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              decoration: boxDecoration,
              child: ToolbarWithTitle(str_Help_Support)),

          Container(
            margin: EdgeInsets.only(top: 20.h,left: 16.w,right: 16.w),
            padding: EdgeInsets.only(top: 12.h,bottom: 34.h),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: shadow2_0x0a004080,
                    offset: Offset(0.0, 5.0),
                    blurRadius: 10.0,
                    spreadRadius: 0.0,
                  )
                ],
                borderRadius: BorderRadius.all(Radius.circular(12.r))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Image.asset(img_support_centre,width: double.infinity,height: 343.h,fit: BoxFit.cover,),
                Center(
                  child: Text(str_txt_how_can_we_help_you,
                    style: TextStyle(
                        fontFamily: fontSfProDisplaySemiBold,
                        fontSize: 24.sp,
                        height: 1.5,
                        color: title_black_121313),
                  textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 12.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 9.h,horizontal: 17.w),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 1.w),
                          borderRadius: BorderRadius.circular(8.r)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(icon_call_blue,color: Colors.black,width: 18.w,height: 18.h,),
                          SizedBox(width: 4.w),
                          Text(str_call_us,style: TextStyle(
                              fontSize: 14.sp,fontFamily: fontSfProDisplaySemiBold,color: Colors.black
                          ),)
                        ],
                      ),
                    ),
                    SizedBox(width: 36.w,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 9.h,horizontal: 17.w),
                      decoration: BoxDecoration(
                          border: Border.all(color:  Colors.black,width: 1.w),
                          borderRadius: BorderRadius.circular(8.r)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(icon_email_blue,color: Colors.black,width: 18.w,height: 18.h),
                          SizedBox(width: 4.w),
                          Text(str_mail_us,style: TextStyle(
                              fontSize: 14.sp,fontFamily: fontSfProDisplaySemiBold,color: Colors.black
                          ),)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
