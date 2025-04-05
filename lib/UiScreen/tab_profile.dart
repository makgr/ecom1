import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';
import '../Widgets/box_shadow.dart';

class TabProfile extends StatefulWidget {
  const TabProfile({super.key});

  @override
  State<TabProfile> createState() => _TabProfileState();
}

class _TabProfileState extends State<TabProfile> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white, // navigation bar color
        statusBarColor: Colors.white, // status bar color
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness:
            Brightness.light, //navigation bar icons' color
      ),
    );
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white, // status bar color
            statusBarIconBrightness: Brightness.dark, // status bar icons' color
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            str_Profile,
            style: TextStyle(
              fontSize: 20.sp,
              color: title_black_121313,
              fontFamily: fontSfProDisplaySemiBold,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: SvgPicture.asset(icon_back_arrow, width: 24.w, height: 24.h),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.h, left: 16.w, right: 16.w),
              decoration: boxDecorationShadow,
              padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 14.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.asset(
                      img_user,
                      height: 53.h,
                      width: 53.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 14.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John Doe",
                        style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.black,
                          fontFamily: fontSfProDisplayMedium,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        "john@gmail.com",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: silver_82868a,
                          fontFamily: fontSfProDisplayMedium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 27.h, left: 16.w, right: 16.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: line_e2e3e5, width: 1.w),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 20.h,
                      left: 16.w,
                      right: 16.w,
                      bottom: 10.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(11),
                          height: 44.h,
                          width: 44.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: silver_gray_eeeeee,
                          ),
                          child: SvgPicture.asset(
                            icon_myorder,
                            width: 22.w,
                            height: 22.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 14.w),
                        Expanded(
                          child: Text(
                            "My Orders",
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: title_black_121313,
                              fontFamily: fontSfProDisplayMedium,
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          icon_chevron_right_arrow,
                          width: 16.w,
                          height: 16.h,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 16.w,
                      right: 16.w,
                      bottom: 10.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(11),
                          height: 44.h,
                          width: 44.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: silver_gray_eeeeee,
                          ),
                          child: SvgPicture.asset(
                            icon_shipping_address,
                            width: 22.w,
                            height: 22.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 14.w),
                        Expanded(
                          child: Text(
                            "Shipping Address",
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: title_black_121313,
                              fontFamily: fontSfProDisplayMedium,
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          icon_chevron_right_arrow,
                          width: 16.w,
                          height: 16.h,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 16.w,
                      right: 16.w,
                      bottom: 10.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(11),
                          height: 44.h,
                          width: 44.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: silver_gray_eeeeee,
                          ),
                          child: SvgPicture.asset(
                            icon_help,
                            width: 22.w,
                            height: 22.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 14.w),
                        Expanded(
                          child: Text(
                            "Help & Support",
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: title_black_121313,
                              fontFamily: fontSfProDisplayMedium,
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          icon_chevron_right_arrow,
                          width: 16.w,
                          height: 16.h,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 16.w,
                      right: 16.w,
                      bottom: 10.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(11),
                          height: 44.h,
                          width: 44.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: silver_gray_eeeeee,
                          ),
                          child: SvgPicture.asset(
                            icon_terms_condition,
                            width: 22.w,
                            height: 22.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 14.w),
                        Expanded(
                          child: Text(
                            "Terms & Conditions",
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: title_black_121313,
                              fontFamily: fontSfProDisplayMedium,
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          icon_chevron_right_arrow,
                          width: 16.w,
                          height: 16.h,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 16.w,
                      right: 16.w,
                      bottom: 20.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(11),
                          height: 44.h,
                          width: 44.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: silver_gray_eeeeee,
                          ),
                          child: SvgPicture.asset(
                            icon_logout,
                            width: 22.w,
                            height: 22.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 14.w),
                        Text(
                          "Logout",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: title_black_121313,
                            fontFamily: fontSfProDisplayMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
