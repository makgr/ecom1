import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarColor: Colors.white, // status bar color
      statusBarIconBrightness: Brightness.dark, // status bar icons' color
      systemNavigationBarIconBrightness:
          Brightness.light, //navigation bar icons' color
    ));
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16.h,
              ),
              Image.asset(img_bg_girl_login),
              SizedBox(
                height: 20.h,
              ),
              Text(
                strLets_get_started,
                style: TextStyle(
                    fontSize: 28.sp,
                    fontFamily: fontSfProDisplaySemiBold,
                    color: title_black_121313),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                str_smart_experience_bringing_all_the_seasons,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: fontSfProDisplayRegular,
                    color: title_black_121313),
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: light_gray_f2f3f5,
                      elevation: 0,
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        // side: BorderSide(color: skygreen_24d39e, width: 0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          icon_google,
                          width: 24.w,
                          height: 24.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          str_continue_with_google,
                          style: TextStyle(
                              color: title_black_121313,
                              fontSize: 15.sp,
                              fontFamily: fontSfProDisplaySemiBold),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: light_gray_f2f3f5,
                      elevation: 0,
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        // side: BorderSide(color: skygreen_24d39e, width: 0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          icon_apple,
                          width: 24.w,
                          height: 24.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          str_continue_with_apple,
                          style: TextStyle(
                              color: title_black_121313,
                              fontSize: 15.sp,
                              fontFamily: fontSfProDisplaySemiBold),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 18.h,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: str_by_continue_you_are_agree_to_our,
                      style: TextStyle(
                          color: dark_gray_616161,
                          fontSize: 13.sp,
                          fontFamily: fontSfProDisplayRegular),
                      children: [
                        WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 4.w),
                          ),
                        ),
                        TextSpan(
                          text: str_terms_conditions,
                          style: TextStyle(
                              color: blue_226beb,
                              fontSize: 13.sp,
                              fontFamily: fontSfProDisplayRegular),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
