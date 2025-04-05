import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Model/product_list_model.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';
import '../Widgets/box_shadow.dart';
import '../Widgets/toolbar_with_title.dart';
class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  List<ProductListModel> orderList = [
    ProductListModel(img_spyker,"3324502349KJD2343","Spykar","+1 more item(s)","Order Confirmed"),
    ProductListModel(img_jack,"3324502349KJD2343","Spykar","+1 more item(s)","Order Placed"),
    ProductListModel(img_wrong,"3324502349KJD2343","Spykar","+1 more item(s)","Order Shipped"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              decoration: boxDecoration,
              child: ToolbarWithTitle(str_My_Orders)),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(icon_no_new_order),
                SizedBox(height: 16.h,),
                Text(str_No_Orders,style: TextStyle(
                    fontFamily: fontSfProDisplaySemiBold,fontSize: 16.sp,color: dark_silver_5d6266
                ),)
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                primary: false,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 20.h),
                itemCount: orderList.length,
                itemBuilder: (context, i) => Container(
                  margin: EdgeInsets.only(bottom:16.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal:16.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(str_Orders_no,style: TextStyle(fontSize: 12.sp,fontFamily: fontSfProDisplayRegular,color: silver_82868a),),
                            SizedBox(height: 2.h,),
                            Text(orderList[i].tvPantsType,style: TextStyle(fontSize: 13.sp,fontFamily: fontSfProDisplaySemiBold,color: dark_silver_5d6266),),
                            SizedBox(height: 16.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(6.r),
                                  child: Image.asset(orderList[i].imgPants,height: 64.h,width:64.w,fit: BoxFit.cover,),
                                ),
                                SizedBox(width: 12.w,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(orderList[i].tvPrice,style: TextStyle(fontSize: 15.sp,fontFamily: fontSfProDisplayMedium,color: title_black_121313),),
                                    SizedBox(height: 2.h,),
                                    Text(orderList[i].tvCutPrice,style: TextStyle(fontSize: 12.sp,fontFamily: fontSfProDisplayRegular,color: dark_silver_5d6266),),
                                    SizedBox(height: 4.h,),
                                    Text(orderList[i].tvDiscount,style: TextStyle(fontSize: 14.sp,fontFamily: fontSfProDisplayRegular,color: blue_226beb),),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.h,),
                      Container(height: 4.h,color: light_gray_f2f3f5,)
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
