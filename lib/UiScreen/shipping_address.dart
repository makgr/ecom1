import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Model/coupon_list_model.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';
import '../Widgets/box_shadow.dart';
import '../Widgets/toolbar_with_title.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  List<CouponListModel> shippingAddressList = [
    CouponListModel("John doe","6414 Losee Rd\nNorth Las Vegas,\nNorth Carolina, 89086, USA\nMobile : 0225 660 8929"),
    CouponListModel("John doe","6414 Losee Rd\nNorth Las Vegas,\nNorth Carolina, 89086, USA\nMobile : 0225 660 8929"),
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
              child: ToolbarWithTitle(str_shipping_address)),
          SizedBox(height: 20.h,),

          ListView.builder(
            scrollDirection: Axis.vertical,
            primary: false,
            shrinkWrap: true,
            itemCount: shippingAddressList.length,
            itemBuilder: (context, i) =>Container(
              margin: EdgeInsets.only(left: 16.w,right: 16.w,bottom: 16.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(shippingAddressList[i].tvDiscount,style: TextStyle(
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 15.sp,
                      color: title_blacks_212121),),
                  Text(shippingAddressList[i].tvFlatOff,style: TextStyle(
                      fontFamily: fontSfProDisplayRegular,
                      fontSize: 14.sp,
                      color: silver_82868a,height: 1.5),),
                  SizedBox(height: 8.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(str_Edit,style: TextStyle(
                          fontFamily: fontSfProDisplayMedium,
                          fontSize: 14.sp,
                          color: blue_226beb),),
                      SizedBox(width: 40.w,),
                      Text(str_Delete,style: TextStyle(
                          fontFamily: fontSfProDisplayMedium,
                          fontSize: 14.sp,
                          color: red_ff4848),),
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  Container(
                    height: 1.h,
                    color: light_gray_f2f3f5,
                  )
                ],
              ),
            )

          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            padding: EdgeInsets.symmetric(vertical: 17.5.h,horizontal: 14.w),
            decoration: BoxDecoration(
                border: Border.all(color: blue_226beb,width: 1.w),
                borderRadius: BorderRadius.circular(11.r)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset(icon_add,width: 20.w,height: 20.h,),
                SizedBox(width: 11.w,),
                Text(str_add_new_address,style: TextStyle(
                    fontFamily: fontSfProDisplaySemiBold,fontSize: 14.sp,color: blue_226beb
                ),)
              ],
            ),
          ),
          // Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          //       SvgPicture.asset(icon_no_delivery_address),
          //       SizedBox(height: 16.h,),
          //       Text(str_No_Delivery_Locations,style: TextStyle(
          //           fontFamily: fontSfProDisplaySemiBold,fontSize: 16.sp,color: dark_silver_5d6266
          //       ),)
          //     ],
          //   ),
          // )
        ],
      ),
    ));
  }
}
