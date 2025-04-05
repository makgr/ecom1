import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_strings.dart';
import '../Widgets/box_shadow.dart';
import '../Widgets/toolbar_with_title.dart';

class AddNewAddress extends StatefulWidget {
  const AddNewAddress({super.key});

  @override
  State<AddNewAddress> createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              decoration: boxDecoration,
              child: ToolbarWithTitle(str_add_new_address)),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    str_first_name,
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: fontSfProDisplayMedium,
                                        color: title_black_121313),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  TextField(
                                    style: TextStyle(
                                        color: title_black_121313,
                                        fontFamily: fontSfProDisplayMedium,
                                        fontSize: 15.sp),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(11.r),
                                        borderSide: BorderSide(
                                            width: 1.w, color: line_e2e3e5),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(11.r),
                                        borderSide: BorderSide(
                                            width: 1.w, color: Colors.black),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(11.r),
                                        borderSide: BorderSide(
                                            width: 1.w, color: line_e2e3e5),
                                      ),
                                      isDense: true,
                                      hintText: "First Name",
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 14.w, vertical: 14.h),
                                      hintStyle: TextStyle(
                                          color: silver_82868a,
                                          fontFamily: fontSfProDisplayMedium,
                                          fontSize: 15.sp),
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.text,
                                    cursorColor: title_black_121313,
                                    textInputAction: TextInputAction.next,
                                  )
                                ]),
                          ),
                          SizedBox(
                            width: 13.w,
                          ),
                          Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    str_last_name,
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: fontSfProDisplayMedium,
                                        color: title_black_121313),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  TextField(
                                    style: TextStyle(
                                        color: title_black_121313,
                                        fontFamily: fontSfProDisplayMedium,
                                        fontSize: 15.sp),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(11.r),
                                        borderSide: BorderSide(
                                            width: 1.w, color: line_e2e3e5),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(11.r),
                                        borderSide: BorderSide(
                                            width: 1.w, color: Colors.black),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(11.r),
                                        borderSide: BorderSide(
                                            width: 1.w, color: line_e2e3e5),
                                      ),
                                      isDense: true,
                                      hintText: "Last Name",
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 14.w, vertical: 14.h),
                                      hintStyle: TextStyle(
                                          color: silver_82868a,
                                          fontFamily: fontSfProDisplayMedium,
                                          fontSize: 15.sp),
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.text,
                                    cursorColor: title_black_121313,
                                    textInputAction: TextInputAction.next,
                                  )
                                ]),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        str_mobile_no,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: fontSfProDisplayMedium,
                            color: title_black_121313),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      TextField(
                        style: TextStyle(
                            color: title_black_121313,
                            fontFamily: fontSfProDisplayMedium,
                            fontSize: 15.sp),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11.r),
                            borderSide:
                                BorderSide(width: 1.w, color: line_e2e3e5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11.r),
                            borderSide:
                                BorderSide(width: 1.w, color: Colors.black),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11.r),
                            borderSide:
                                BorderSide(width: 1.w, color: line_e2e3e5),
                          ),
                          isDense: true,
                          hintText: "Mobile no.",
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 14.w, vertical: 14.h),
                          hintStyle: TextStyle(
                              color: silver_82868a,
                              fontFamily: fontSfProDisplayMedium,
                              fontSize: 15.sp),
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.number,
                        cursorColor: title_black_121313,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                        ],
                        textInputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        str_full_address,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: fontSfProDisplayMedium,
                            color: title_black_121313),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      TextField(
                        style: TextStyle(
                            color: title_black_121313,
                            fontFamily: fontSfProDisplayMedium,
                            fontSize: 15.sp),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11.r),
                            borderSide:
                                BorderSide(width: 1.w, color: line_e2e3e5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11.r),
                            borderSide:
                                BorderSide(width: 1.w, color: Colors.black),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11.r),
                            borderSide:
                                BorderSide(width: 1.w, color: line_e2e3e5),
                          ),
                          isDense: true,
                          hintText: "Full Address",
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 14.w, vertical: 14.h),
                          hintStyle: TextStyle(
                              color: silver_82868a,
                              fontFamily: fontSfProDisplayMedium,
                              fontSize: 15.sp),
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.text,
                        cursorColor: title_black_121313,
                        textInputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    str_pin_code,
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: fontSfProDisplayMedium,
                                        color: title_black_121313),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  TextField(
                                    style: TextStyle(
                                        color: title_black_121313,
                                        fontFamily: fontSfProDisplayMedium,
                                        fontSize: 15.sp),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(11.r),
                                        borderSide: BorderSide(
                                            width: 1.w, color: line_e2e3e5),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(11.r),
                                        borderSide: BorderSide(
                                            width: 1.w, color: Colors.black),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(11.r),
                                        borderSide: BorderSide(
                                            width: 1.w, color: line_e2e3e5),
                                      ),
                                      isDense: true,
                                      hintText: "Pin Code",
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 14.w, vertical: 14.h),
                                      hintStyle: TextStyle(
                                          color: silver_82868a,
                                          fontFamily: fontSfProDisplayMedium,
                                          fontSize: 15.sp),
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.number,
                                    cursorColor: title_black_121313,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(6),
                                    ],
                                    textInputAction: TextInputAction.next,
                                  )
                                ]),
                          ),
                          SizedBox(
                            width: 13.w,
                          ),
                          Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    str_city,
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: fontSfProDisplayMedium,
                                        color: title_black_121313),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  TextField(
                                    style: TextStyle(
                                        color: title_black_121313,
                                        fontFamily: fontSfProDisplayMedium,
                                        fontSize: 15.sp),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(11.r),
                                        borderSide: BorderSide(
                                            width: 1.w, color: line_e2e3e5),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(11.r),
                                        borderSide: BorderSide(
                                            width: 1.w, color: Colors.black),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(11.r),
                                        borderSide: BorderSide(
                                            width: 1.w, color: line_e2e3e5),
                                      ),
                                      isDense: true,
                                      hintText: "City",
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 14.w, vertical: 14.h),
                                      hintStyle: TextStyle(
                                          color: silver_82868a,
                                          fontFamily: fontSfProDisplayMedium,
                                          fontSize: 15.sp),
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.text,
                                    cursorColor: title_black_121313,
                                    textInputAction: TextInputAction.next,
                                  )
                                ]),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    str_State,
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: fontSfProDisplayMedium,
                                        color: title_black_121313),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  TextField(
                                    style: TextStyle(
                                        color: title_black_121313,
                                        fontFamily: fontSfProDisplayMedium,
                                        fontSize: 15.sp),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(11.r),
                                        borderSide: BorderSide(
                                            width: 1.w, color: line_e2e3e5),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(11.r),
                                        borderSide: BorderSide(
                                            width: 1.w, color: Colors.black),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(11.r),
                                        borderSide: BorderSide(
                                            width: 1.w, color: line_e2e3e5),
                                      ),
                                      isDense: true,
                                      hintText: "State",
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 14.w, vertical: 14.h),
                                      hintStyle: TextStyle(
                                          color: silver_82868a,
                                          fontFamily: fontSfProDisplayMedium,
                                          fontSize: 15.sp),
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.text,
                                    cursorColor: title_black_121313,
                                    textInputAction: TextInputAction.next,
                                  )
                                ]),
                          ),
                          SizedBox(
                            width: 13.w,
                          ),
                          Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    str_County,
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: fontSfProDisplayMedium,
                                        color: title_black_121313),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  TextField(
                                    style: TextStyle(
                                        color: title_black_121313,
                                        fontFamily: fontSfProDisplayMedium,
                                        fontSize: 15.sp),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(11.r),
                                        borderSide: BorderSide(
                                            width: 1.w, color: line_e2e3e5),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(11.r),
                                        borderSide: BorderSide(
                                            width: 1.w, color: Colors.black),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(11.r),
                                        borderSide: BorderSide(
                                            width: 1.w, color: line_e2e3e5),
                                      ),
                                      isDense: true,
                                      hintText: "Country",
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 14.w, vertical: 14.h),
                                      hintStyle: TextStyle(
                                          color: silver_82868a,
                                          fontFamily: fontSfProDisplayMedium,
                                          fontSize: 15.sp),
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.text,
                                    cursorColor: title_black_121313,
                                    textInputAction: TextInputAction.done,
                                  )
                                ]),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ]),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16.w, bottom: 20.h, right: 16.w),
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
                  str_save_and_continue,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                      fontFamily: fontSfProDisplaySemiBold),
                )),
          ),
        ],
      ),
    ));
  }
}
