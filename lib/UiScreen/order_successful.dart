import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';

class OrderSuccessful extends StatefulWidget {
  const OrderSuccessful({super.key});

  @override
  State<OrderSuccessful> createState() => _OrderSuccessfulState();
}

class _OrderSuccessfulState extends State<OrderSuccessful> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon_success,
              height: 82.h,
              width: 82.w,
            ),
            SizedBox(
              height: 32.h,
            ),
            Text(
              "Order No : 3324502349KJD2343",
              style: TextStyle(
                  fontSize: 18.sp,
                  color: title_black_121313,
                  fontFamily: fontSfProDisplaySemiBold),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              str_your_order_successfully_placed,
              style: TextStyle(
                  fontSize: 15.sp,
                  color: silver_82868a,
                  fontFamily: fontSfProDisplayMedium),
            ),
            SizedBox(
              height: 101.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 63.w),
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      // side: BorderSide(color: skygreen_24d39e, width: 0),
                    ),
                  ),
                  child: Text(
                    str_view_Order,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontFamily: fontSfProDisplaySemiBold),
                  )),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 63.w),
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: light_gray_f2f3f5,
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      // side: BorderSide(color: skygreen_24d39e, width: 0),
                    ),
                  ),
                  child: Text(
                    str_track_order,
                    style: TextStyle(
                        color: title_black_121313,
                        fontSize: 15.sp,
                        fontFamily: fontSfProDisplaySemiBold),
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
