import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_tracker/order_tracker.dart';

import '../Model/order_list_model.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';
import '../Widgets/box_shadow.dart';
import '../Widgets/toolbar_with_title.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  List<OrderListModel> cartList = [
    OrderListModel(img_spyker,"Spyker","Men/Jeans","\$20.00","\$45.00","(60% OFF)","Qty : 1"),
    OrderListModel(img_jack,"Jack & Jones","Men/Jeans","\$20.00","\$45.00","(60% OFF)","Qty : 1"),
    // CartListModel(img_wrong,"Pepe Jeans","Men/Jeans","\$20.00","\$45.00","(60% OFF)"),
  ];

  List<TextDto> orderList = [TextDto("21 Jun, 2022  |  2:00 pm",null),];
  List<TextDto> shippedList = [TextDto("21 Jun, 2022  |  2:00 pm",null),];
  List<TextDto> outOfDeliveryList = [TextDto("21 Jun, 2022  |  2:00 pm",null),];
  List<TextDto> deliveredList = [TextDto("-",null),];

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
              child: ToolbarWithTitle(str_Order_Details)),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h,),
              Container(
                  margin: EdgeInsets.only(left: 16.w),
                  child: Text(str_Orders_no,style: TextStyle(fontSize: 12.sp,fontFamily: fontSfProDisplayRegular,color: silver_82868a),)),
              SizedBox(height: 2.h,),
              Container(
                  margin: EdgeInsets.only(left: 16.w),
                  child: Text("3324502349KJD2343",style: TextStyle(fontSize: 13.sp,fontFamily: fontSfProDisplaySemiBold,color: dark_silver_5d6266),)),
              SizedBox(height: 20.h,),
              Container(
                  margin: EdgeInsets.only(left: 16.w),
                  child: Text("Items (2)",style: TextStyle(fontSize: 15.sp,fontFamily: fontSfProDisplaySemiBold,color: title_black_121313),)),
              ListView.builder(
                scrollDirection: Axis.vertical,
                primary: false,
                shrinkWrap: true,
                itemCount: cartList.length,
                itemBuilder: (context, i) => Container(
                    margin: EdgeInsets.only(left: 16.w,right: 16.w,bottom: 16.h),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Visibility(
                          visible:i>0,
                          child: Container(
                            height: 1.h,
                            color: light_gray_f2f3f5,
                          ),
                        ),
                        SizedBox(height: 16.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(6.r),
                              child: Image.asset(cartList[i].imgPants,height: 94.h,width:94.w,fit: BoxFit.cover,),
                            ),
                            SizedBox(width: 16.h,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(cartList[i].tvPantsType,style: TextStyle(
                                    fontFamily: fontSfProDisplayMedium,color: title_blacks_212121,fontSize: 15.sp
                                ),),
                                SizedBox(height: 3.h,),
                                Text(cartList[i].tvPantsSubType,style: TextStyle(
                                    fontFamily: fontSfProDisplayRegular,color: title_blacks_212121,fontSize: 10.sp
                                ),),
                                SizedBox(height: 7.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(cartList[i].tvPrice,
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontFamily: fontSfProDisplaySemiBold,
                                          color: title_black_121313),
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Text(cartList[i].tvCutPrice,
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontFamily: fontSfProDisplayRegular,
                                          color: silver_82868a,
                                          decoration: TextDecoration.lineThrough
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Text(cartList[i].tvDiscount,
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontFamily: fontSfProDisplayRegular,
                                          color: red_ff4848),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6.h,),
                                Text(cartList[i].tvQuantity,
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: fontSfProDisplaySemiBold,
                                      color: title_black_121313),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    )
                ),
              ),
              Container(
                height: 4.h,
                color: light_gray_f2f3f5,
              ),
              SizedBox(height: 20.h,),
              Container(
                  margin: EdgeInsets.only(left: 16.w),
                  child: Text(str_Tracking,style: TextStyle(fontSize: 15.sp,fontFamily: fontSfProDisplaySemiBold,color: title_black_121313),)),
              SizedBox(height: 16.h,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                child: OrderTracker(
                  status: Status.delivered,
                  activeColor: blue_226beb,
                  inActiveColor: line_e2e3e5,
                  orderTitleAndDateList: orderList,
                  shippedTitleAndDateList: shippedList,
                  outOfDeliveryTitleAndDateList: outOfDeliveryList,
                  deliveredTitleAndDateList: deliveredList,
                  headingTitleStyle: TextStyle(fontSize: 13.sp,fontFamily: fontSfProDisplaySemiBold,color:Colors.black),
                  headingDateTextStyle: TextStyle(fontSize: 13.sp,fontFamily: fontSfProDisplaySemiBold,color:Colors.white),
                  subTitleTextStyle: TextStyle(fontSize: 12.sp,fontFamily: fontSfProDisplayRegular,color: silver_82868a),
                ),
              ),
              SizedBox(height: 0.h,),
              Container(
                height: 4.h,
                color: light_gray_f2f3f5,
              ),

              Container(
                margin: EdgeInsets.only(left: 16.w,top: 20.h),
                child: Text(str_shipping_address,style: TextStyle(
                    fontSize: 15.sp,fontFamily: fontSfProDisplaySemiBold,color: title_black_121313
                ),),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.w,top: 16.h),
                child: Text("John doe",style: TextStyle(
                    fontSize: 15.sp,fontFamily: fontSfProDisplayMedium,color: title_black_121313
                ),),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.w,top: 0.5.h,right: 50.w),
                child: Text("31, 1st Floor, Near CP Tank,Tatya Gharpure Marg, Mumbai, 400004 Mobile : 0225 660 8929",style: TextStyle(
                    fontSize: 14.sp,fontFamily: fontSfProDisplayRegular,color: silver_82868a,height: 1.5
                ),),
              ),
              SizedBox(height: 16.h,),
              Container(
                height: 4.h,
                color: light_gray_f2f3f5,
              ),
              Container(
                margin: EdgeInsets.only(left: 16.w,top: 20.h),
                child: Text(str_Payment_Details,style: TextStyle(
                    fontSize: 15.sp,fontFamily: fontSfProDisplaySemiBold,color: title_black_121313
                ),),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.w,top: 16.h,right: 16.w),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(str_Item_total,style: TextStyle(
                        fontSize: 14.sp,fontFamily: fontSfProDisplayMedium,color: silver_82868a
                    ),),
                    Text(str_price,style: TextStyle(
                        fontSize: 14.sp,fontFamily: fontSfProDisplayMedium,color: title_black_121313
                    ),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.w,top: 10.h,right: 16.w),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(str_Discount,style: TextStyle(
                        fontSize: 14.sp,fontFamily: fontSfProDisplayMedium,color: green_34d16b
                    ),),
                    Text(str_zero,style: TextStyle(
                        fontSize: 14.sp,fontFamily: fontSfProDisplayMedium,color: green_34d16b
                    ),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.w,top: 10.h,right: 16.w),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(str_Sub_total,style: TextStyle(
                        fontSize: 14.sp,fontFamily: fontSfProDisplayMedium,color: silver_82868a
                    ),),
                    Text(str_price,style: TextStyle(
                        fontSize: 14.sp,fontFamily: fontSfProDisplayMedium,color: title_black_121313
                    ),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.w,top: 10.h,right: 16.w),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(str_Shipping_Charges,style: TextStyle(
                        fontSize: 14.sp,fontFamily: fontSfProDisplayMedium,color: silver_82868a
                    ),),
                    Text(str_price,style: TextStyle(
                        fontSize: 14.sp,fontFamily: fontSfProDisplayMedium,color: title_black_121313
                    ),),
                  ],
                ),
              ),
              Container(
                height: 1.h,
                color: light_gray_f2f3f5  ,
                margin: EdgeInsets.only(left: 16.w,top: 10.h,right: 16.w),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.w,top: 10.h,right: 16.w),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(str_You_Pay,style: TextStyle(
                        fontSize: 15.sp,fontFamily: fontSfProDisplaySemiBold,color: title_black_121313
                    ),),
                    Text(str_price,style: TextStyle(
                        fontSize: 15.sp,fontFamily: fontSfProDisplaySemiBold,color: title_black_121313
                    ),),
                  ],
                ),
              ),
              Container(
                height: 4.h,
                color: light_gray_f2f3f5,
                margin: EdgeInsets.only(top: 20.h),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.w,top: 20.h),
                child: Text(str_Payment_mode,style: TextStyle(
                    fontSize: 15.sp,fontFamily: fontSfProDisplaySemiBold,color: title_black_121313
                ),),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.w,top: 16.h,bottom: 20.h),
                child: Text(str_COD,style: TextStyle(
                    fontSize: 15.sp,fontFamily: fontSfProDisplayMedium,color: blue_226beb
                ),),
              ),
              ]),
          ),
        )
        ],
      ),
    ));
  }
}
