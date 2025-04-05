import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Model/coupon_list_model.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_strings.dart';
import '../Widgets/box_shadow.dart';
import '../Widgets/toolbar_with_title.dart';

class CouponList extends StatefulWidget {
  const CouponList({super.key});

  @override
  State<CouponList> createState() => _CouponListState();
}

class _CouponListState extends State<CouponList> {
  List<CouponListModel> couponList = [
    CouponListModel("20% OFF","Get flat 20% off on minimum bill of 500 Rs."),
    CouponListModel("50% OFF","Get flat 50% off on minimum bill of 5000 Rs."),
  ];

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
              child: ToolbarWithTitle(str_select_coupon)),
          SizedBox(height: 20.h,),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              primary: false,
              shrinkWrap: true,
              itemCount: couponList.length,
              itemBuilder: (context, i) => Container(
                padding: EdgeInsets.only(top: 14.h,bottom: 14.h,left: 14.w,right: 10.w),
                margin: EdgeInsets.only(bottom: 16.h,left: 16.w,right: 16.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                    color: smoke_gray_f7f8fa
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(couponList[i].tvDiscount,style: TextStyle(
                              fontSize: 16.sp,fontFamily: fontSfProDisplayBold,color: blue_226beb
                          ),),
                          Text(couponList[i].tvFlatOff,style: TextStyle(
                              fontSize: 12.sp,fontFamily: fontSfProDisplayRegular,color: title_black_121313
                          ),),
                        ],
                      ),
                    ),
                    Text(str_apply,style: TextStyle(
                        fontSize: 14.sp,fontFamily: fontSfProDisplayMedium,color:Colors.black
                    ),),
                  ],
                ),
              )
            ),
          ),
        ],
      ),
    ));
  }
}
