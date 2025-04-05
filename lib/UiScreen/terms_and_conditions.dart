import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_strings.dart';
import '../Widgets/box_shadow.dart';
import '../Widgets/toolbar_with_title.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
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
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              decoration: boxDecoration,
              child: ToolbarWithTitle(str_terms_and_conditions)),
          SizedBox(
            height: 24.h,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(str_terms1,style: TextStyle(
                          fontSize: 18.sp,fontFamily: fontSfProDisplaySemiBold,color: title_black_121313
                      ),),
                      SizedBox(height: 8.h,),
                      Text(str_dummy_txt_terms,style: TextStyle(
                          fontSize: 15.sp,fontFamily: fontSfProDisplayRegular,color: dark_silver_5d6266,height: 1.5
                      ),),
                      SizedBox(height: 24.h,),
                      Text(str_policy,style: TextStyle(
                          fontSize: 18.sp,fontFamily: fontSfProDisplaySemiBold,color: title_black_121313
                      ),),
                      SizedBox(height: 8.h,),
                      Text(str_dummy_txt_terms,style: TextStyle(
                          fontSize: 15.sp,fontFamily: fontSfProDisplayRegular,color: dark_silver_5d6266,height: 1.5
                      ),),
                      SizedBox(height: 24.h,),
                      Text(str_cancellation_policy,style: TextStyle(
                          fontSize: 18.sp,fontFamily: fontSfProDisplaySemiBold,color: title_black_121313
                      ),),
                      SizedBox(height: 8.h,),
                      Text(str_dummy_txt_terms,style: TextStyle(
                          fontSize: 15.sp,fontFamily: fontSfProDisplayRegular,color: dark_silver_5d6266,height: 1.5
                      ),),
                      SizedBox(height: 15.h,),

                    ]),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
