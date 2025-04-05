import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Model/coupon_list_model.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';

class BottomSheetSelectAddress extends StatefulWidget {
  const BottomSheetSelectAddress({super.key});

  @override
  State<BottomSheetSelectAddress> createState() =>
      _BottomSheetSelectAddressState();
}

class _BottomSheetSelectAddressState extends State<BottomSheetSelectAddress> {
  int checkedIndex = -1;
  List<CouponListModel> selectAddressList = [
    CouponListModel("John doe",
        "31, 1st Floor, Near CP Tank,\nTatya Gharpure Marg,\nMumbai, 400004\nMobile : 0225 660 8929"),
    CouponListModel("Erika",
        "31, 1st Floor, Near CP Tank,\nTatya Gharpure Marg,\nMumbai, 400004\nMobile : 0225 660 8929"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 12.h),
              width: 40.w,
              height: 3.h,
              decoration: BoxDecoration(
                  color: line_e2e3e5, borderRadius: BorderRadius.circular(5.r)),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            str_Select_delivery_address,
            style: TextStyle(
                fontSize: 18.sp,
                color: title_black_121313,
                fontFamily: fontSfProDisplaySemiBold),
          ),
          SizedBox(
            height: 24.h,
          ),
          ListView.builder(
              scrollDirection: Axis.vertical,
              primary: false,
              shrinkWrap: true,
              itemCount: selectAddressList.length,
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      checkedIndex = i;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              checkedIndex == i
                                  ? icon_radio_active
                                  : icon_circle_grey,
                              width: 20.w,
                              height: 20.h,
                            ),
                            SizedBox(
                              width: 14.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  selectAddressList[i].tvDiscount,
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontFamily: fontSfProDisplayMedium,
                                      color: title_blacks_212121),
                                ),
                                Text(
                                  selectAddressList[i].tvFlatOff,
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: fontSfProDisplayRegular,
                                      color: silver_82868a,
                                      height: 1.4),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15.h),
                          height: 1.h,
                          color: light_gray_f2f3f5,
                        ),
                      ],
                    ),
                  ),
                );
              }),
          Container(
            padding: EdgeInsets.symmetric(vertical: 17.5.h, horizontal: 14.w),
            decoration: BoxDecoration(
                border: Border.all(color: blue_226beb, width: 1.w),
                borderRadius: BorderRadius.circular(11.r)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset(icon_add,width: 20.w,height: 20.h,),
                SizedBox(width: 11.w,),
                Text(str_add_new_address,style: TextStyle(
                  fontFamily: fontSfProDisplaySemiBold,fontSize: 14.sp,color: blue_226beb
                ),),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),


          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(icon_no_delivery_address),
                SizedBox(height: 16.h,),
                Text(str_No_Delivery_Locations,style: TextStyle(
                  fontFamily: fontSfProDisplaySemiBold,fontSize: 16.sp,color: dark_silver_5d6266
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
