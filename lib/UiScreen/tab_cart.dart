import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Model/cart_list_model.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';
import '../Widgets/box_shadow.dart';
import 'bottomsheet_select_address.dart';

class TabCart extends StatefulWidget {
  const TabCart({super.key});

  @override
  State<TabCart> createState() => _TabCartState();
}

class _TabCartState extends State<TabCart> {
  List<CartListModel> cartList = [
    CartListModel(
        img_spyker, "Spyker", "Men/Jeans", "\$20.00", "\$45.00", "(60% OFF)"),
    CartListModel(img_jack, "Jack & Jones", "Men/Jeans", "\$20.00", "\$45.00",
        "(60% OFF)"),
    // CartListModel(img_wrong,"Pepe Jeans","Men/Jeans","\$20.00","\$45.00","(60% OFF)"),
  ];
  bool _selectedFirst = false;
  int _n = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 15.h),
              decoration: boxDecoration,
              child: Text(
                str_cart,
                style: TextStyle(
                    fontSize: 20.sp,
                    color: title_black_121313,
                    fontFamily: fontSfProDisplaySemiBold),
              )),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16.w, top: 20.h),
                      child: Text(
                        str_delivery_address,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: fontSfProDisplaySemiBold,
                            color: title_black_121313),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16.w, top: 16.h),
                      child: Text(
                        "John doe",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: fontSfProDisplayMedium,
                            color: title_blacks_212121),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16.w),
                      child: Text(
                        "31, 1st Floor, Near CP Tank,\nTatya Gharpure Marg,\nMumbai, 400004\nMobile : 0225 660 8929",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: fontSfProDisplayRegular,
                            color: silver_82868a,
                            height: 1.4),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        selectAddress(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 16.w, top: 10.h),
                        padding: EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 15.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.r),
                            border: Border.all(color: blue_226beb, width: 1.w)),
                        child: Text(
                          str_add_delivery_address,
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: fontSfProDisplayMedium,
                              color: blue_226beb),
                        ),
                      ),
                    ),
                    Container(
                      height: 4.h,
                      color: light_gray_f2f3f5,
                      margin: EdgeInsets.only(top: 20.h),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16.w, top: 20.h),
                      child: Text(
                        str_items,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: fontSfProDisplaySemiBold,
                            color: title_black_121313),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      primary: false,
                      shrinkWrap: true,
                      itemCount: cartList.length,
                      itemBuilder: (context, i) => Container(
                          margin: EdgeInsets.only(
                              left: 16.w, right: 16.w, bottom: 20.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(6.r),
                                child: Image.asset(
                                  cartList[i].imgPants,
                                  height: 107.h,
                                  width: 107.w,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: 16.h,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    cartList[i].tvPantsType,
                                    style: TextStyle(
                                        fontFamily: fontSfProDisplayMedium,
                                        color: title_blacks_212121,
                                        fontSize: 15.sp),
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Text(
                                    cartList[i].tvPantsSubType,
                                    style: TextStyle(
                                        fontFamily: fontSfProDisplayRegular,
                                        color: title_blacks_212121,
                                        fontSize: 10.sp),
                                  ),
                                  SizedBox(
                                    height: 7.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        cartList[i].tvPrice,
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontFamily:
                                                fontSfProDisplaySemiBold,
                                            color: title_black_121313),
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Text(
                                        cartList[i].tvCutPrice,
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontFamily: fontSfProDisplayRegular,
                                            color: silver_82868a,
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Text(
                                        cartList[i].tvDiscount,
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontFamily: fontSfProDisplayRegular,
                                            color: red_ff4848),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 11.h,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.w, vertical: 8.h),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(33.r),
                                        color: smoke_gray_f7f8fa),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (_n != 1) _n--;
                                              });
                                            },
                                            child: SvgPicture.asset(
                                              icon_minus,
                                              width: 16.w,
                                              height: 16.h,
                                            )),
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 14.w),
                                          child: Text(
                                            '$_n',
                                            style: TextStyle(
                                                fontSize: 15.sp,
                                                fontFamily:
                                                    fontSfProDisplayMedium,
                                                color: title_black_121313),
                                          ),
                                        ),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                _n++;
                                              });
                                            },
                                            child: SvgPicture.asset(
                                              icon_plus,
                                              width: 16.w,
                                              height: 16.h,
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                    Container(
                      height: 4.h,
                      color: light_gray_f2f3f5,
                      margin: EdgeInsets.only(bottom: 20.h),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16.w, right: 16.w),
                      padding: EdgeInsets.symmetric(
                          vertical: 16.h, horizontal: 14.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11.r),
                          border: Border.all(color: line_e2e3e5, width: 1.w)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "FLAT 50% off",
                            style: TextStyle(
                                fontFamily: fontSfProDisplayMedium,
                                fontSize: 15.sp,
                                color: green_34d16b),
                          ),
                          Text(
                            "Remove",
                            style: TextStyle(
                                fontFamily: fontSfProDisplayRegular,
                                fontSize: 14.sp,
                                color: silver_82868a),
                          ),
                          // SvgPicture.asset(icon_down_arrow,width: 24.w,height: 24.h,)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16.w, top: 20.h),
                      child: Text(
                        str_Payment_Details,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: fontSfProDisplaySemiBold,
                            color: title_black_121313),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(left: 16.w, top: 16.h, right: 16.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            str_Item_total,
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: fontSfProDisplayMedium,
                                color: silver_82868a),
                          ),
                          Text(
                            str_price,
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: fontSfProDisplayMedium,
                                color: title_black_121313),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(left: 16.w, top: 10.h, right: 16.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            str_Discount,
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: fontSfProDisplayMedium,
                                color: green_34d16b),
                          ),
                          Text(
                            str_zero,
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: fontSfProDisplayMedium,
                                color: green_34d16b),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(left: 16.w, top: 10.h, right: 16.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            str_Sub_total,
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: fontSfProDisplayMedium,
                                color: silver_82868a),
                          ),
                          Text(
                            str_price,
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: fontSfProDisplayMedium,
                                color: title_black_121313),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(left: 16.w, top: 10.h, right: 16.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            str_Shipping_Charges,
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: fontSfProDisplayMedium,
                                color: silver_82868a),
                          ),
                          Text(
                            str_price,
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: fontSfProDisplayMedium,
                                color: title_black_121313),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1.h,
                      color: light_gray_f2f3f5,
                      margin:
                          EdgeInsets.only(left: 16.w, top: 10.h, right: 16.w),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(left: 16.w, top: 10.h, right: 16.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            str_You_Pay,
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontFamily: fontSfProDisplaySemiBold,
                                color: title_black_121313),
                          ),
                          Text(
                            str_price,
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontFamily: fontSfProDisplaySemiBold,
                                color: title_black_121313),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 4.h,
                      color: light_gray_f2f3f5,
                      margin: EdgeInsets.only(top: 20.h),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16.w, top: 20.h),
                      child: Text(
                        str_Payment_mode,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: fontSfProDisplaySemiBold,
                            color: title_black_121313),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedFirst = !_selectedFirst;
                          print("click thay che");
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 16.w, top: 18.h, bottom: 18.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            _selectedFirst
                                ? SvgPicture.asset(
                                    icon_radio_active,
                                    width: 20.w,
                                    height: 20.h,
                                  )
                                : SvgPicture.asset(
                                    icon_circle_grey,
                                    width: 20.w,
                                    height: 20.h,
                                  ),
                            SizedBox(
                              width: 14.w,
                            ),
                            Text(
                              str_COD,
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontFamily: fontSfProDisplayMedium,
                                  color: title_black_121313),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    )
                  ]),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: shadow1_0x0f041d42,
                  offset: Offset(0.0, -3.0),
                  blurRadius: 21.0,
                  spreadRadius: 0.0,
                )
              ],
            ),
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        str_You_Pay,
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontFamily: fontSfProDisplayRegular,
                            color: blue_226beb),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        str_price,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: fontSfProDisplaySemiBold,
                            color: title_black_121313),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      elevation: 0,
                      padding: EdgeInsets.symmetric(
                          vertical: 12.h, horizontal: 49.w),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.r),
                        // side: BorderSide(color: skygreen_24d39e, width: 0),
                      ),
                    ),
                    child: Text(
                      str_Proceed_to_buy,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontFamily: fontSfProDisplaySemiBold),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          )
        ],
      ),
    ));
  }

  void selectAddress(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (
          BuildContext context,
        ) {
          return Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r))),
              child: const SingleChildScrollView(
                child: Wrap(
                  children: [BottomSheetSelectAddress()],
                ),
              ));
        });
  }
}
