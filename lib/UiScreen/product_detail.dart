import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';
import '../Model/product_list_model.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';

import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';
import '../Widgets/indicator.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  double? _ratingValue;
  List<ProductListModel> ratingList = [
    ProductListModel(img_men_circle, "Kintan", "6 days ago", "4.5",
        "The fitting is very good, color is cool. but fabric is not good."),
    ProductListModel(img_men_circle, "Kintan", "6 days ago", "4.5",
        "The fitting is very good, color is cool. but fabric is not good."),
  ];
  final PageController controller = PageController(initialPage: 0);

  int _currentIndex = 0;
  late PageController _pageController;

  void _pageChanged(int index) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   systemNavigationBarColor: Colors.white, // navigation bar color
    //   statusBarColor: Colors.white, // status bar color
    //   statusBarIconBrightness: Brightness.dark, // status bar icons' color
    //   systemNavigationBarIconBrightness:
    //       Brightness.light, //navigation bar icons' color
    // ));
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent, // navigation bar color
// status bar icons' color
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          SizedBox(
                            height: 401.h,
                            child: PageView(
                                controller: controller,
                                onPageChanged: (index) {
                                  setState(() => _currentIndex = index);
                                },
                                children: <Widget>[
                                  Image.asset(
                                    img_jeans_banner,
                                    width: double.infinity,
                                    height: 401.h,
                                    fit: BoxFit.cover,
                                  ),
                                  Image.asset(
                                    img_wrong,
                                    width: double.infinity,
                                    height: 401.h,
                                    fit: BoxFit.cover,
                                  ),
                                ]),
                          ),
                          Positioned(
                            bottom: 2,
                            child: Center(
                              child: SizedBox(
                                height: 25.h,
                                // margin: EdgeInsets.only(bottom: 16.h),
                                child: Indicator(
                                  controller: controller,
                                  itemCount: 2,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 19.w, right: 19.w, top: 37.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(icon_circle_back),
                                SvgPicture.asset(icon_circle_cart)
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(top: 20.h, left: 16.w, right: 16.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Text(
                                "Pepe Jeans",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontFamily: fontSfProDisplaySemiBold,
                                    color: title_black_121313),
                              ),
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontFamily: fontSfProDisplaySemiBold,
                                  color: title_black_121313),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            SvgPicture.asset(
                              icon_star,
                              color: green_34d16b,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16.w),
                        child: Text(
                          "Mens/Jeans",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: fontSfProDisplayRegular,
                              color: silver_82868a),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(top: 10.h, left: 16.w, right: 16.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "\$1479",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontFamily: fontSfProDisplaySemiBold,
                                  color: title_black_121313),
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            Text(
                              "\$3699",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: fontSfProDisplayRegular,
                                  color: silver_82868a,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            Text(
                              "(60% OFF)",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: fontSfProDisplayRegular,
                                  color: red_ff4848),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 4.h,
                        margin: EdgeInsets.only(top: 20.h, bottom: 20.h),
                        color: light_gray_f2f3f5,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16.w),
                        child: Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontFamily: fontSfProDisplaySemiBold,
                              color: title_black_121313),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16.w, right: 16.w),
                        child: Text(
                          "Floral printed, Short\nStretchable\nThe model (height 5’4’’) is wearing a size S",
                          style: TextStyle(
                              fontSize: 14.sp,
                              height: 1.5,
                              fontFamily: fontSfProDisplayRegular,
                              color: dark_silver_5d6266),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16.w, top: 20.h),
                        child: Text(
                          "Details",
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontFamily: fontSfProDisplaySemiBold,
                              color: title_black_121313),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Fabric",
                                    style: TextStyle(
                                        fontFamily: fontSfProDisplayRegular,
                                        fontSize: 14.sp,
                                        color: silver_82868a),
                                  ),
                                  Text(
                                    ":",
                                    style: TextStyle(
                                        fontFamily: fontSfProDisplayRegular,
                                        fontSize: 14.sp,
                                        color: title_black_121313),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Expanded(
                              child: Text(
                                "Lycra Blend",
                                style: TextStyle(
                                    fontFamily: fontSfProDisplayRegular,
                                    fontSize: 14.sp,
                                    color: title_black_121313),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Pattern",
                                    style: TextStyle(
                                        fontFamily: fontSfProDisplayRegular,
                                        fontSize: 14.sp,
                                        color: silver_82868a),
                                  ),
                                  Text(
                                    ":",
                                    style: TextStyle(
                                        fontFamily: fontSfProDisplayRegular,
                                        fontSize: 14.sp,
                                        color: title_black_121313),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Expanded(
                              child: Text(
                                "Solid",
                                style: TextStyle(
                                    fontFamily: fontSfProDisplayRegular,
                                    fontSize: 14.sp,
                                    color: title_black_121313),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Pockets",
                                    style: TextStyle(
                                        fontFamily: fontSfProDisplayRegular,
                                        fontSize: 14.sp,
                                        color: silver_82868a),
                                  ),
                                  Text(
                                    ":",
                                    style: TextStyle(
                                        fontFamily: fontSfProDisplayRegular,
                                        fontSize: 14.sp,
                                        color: title_black_121313),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Expanded(
                              child: Text(
                                "Side Pockets",
                                style: TextStyle(
                                    fontFamily: fontSfProDisplayRegular,
                                    fontSize: 14.sp,
                                    color: title_black_121313),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Fabric Care",
                                    style: TextStyle(
                                        fontFamily: fontSfProDisplayRegular,
                                        fontSize: 14.sp,
                                        color: silver_82868a),
                                  ),
                                  Text(
                                    ":",
                                    style: TextStyle(
                                        fontFamily: fontSfProDisplayRegular,
                                        fontSize: 14.sp,
                                        color: title_black_121313),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Expanded(
                              child: Text(
                                "Gentle Hand Wash and\nMachine Wash",
                                style: TextStyle(
                                    fontFamily: fontSfProDisplayRegular,
                                    fontSize: 14.sp,
                                    color: title_black_121313),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 4.h,
                        margin: EdgeInsets.only(top: 20.h, bottom: 20.h),
                        color: light_gray_f2f3f5,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16.w),
                        child: Text(
                          "Ratings & Reviews",
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontFamily: fontSfProDisplaySemiBold,
                              color: title_black_121313),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                      fontSize: 28.sp,
                                      fontFamily: fontSfProDisplaySemiBold,
                                      color: title_black_121313),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Center(
                                  child: RatingBar(
                                      itemSize: 25,
                                      initialRating: 0,
                                      glowColor: Colors.transparent,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: const EdgeInsets.symmetric(
                                          horizontal: 0.0),
                                      ratingWidget: RatingWidget(
                                          full: SvgPicture.asset(
                                            icon_star,
                                            width: 18.w,
                                            height: 18.h,
                                            color: green_34d16b,
                                          ),
                                          // full: const Icon(Icons.star, color:yellow_FFC80h0),
                                          half: SvgPicture.asset(
                                            icon_star,
                                            width: 18.w,
                                            height: 18.h,
                                            color: green_34d16b,
                                          ),
                                          // half: const Icon(Icons.star_half, color:yellow_FFC800,),
                                          empty: SvgPicture.asset(
                                            icon_star,
                                            width: 18.w,
                                            height: 18.h,
                                            color: green_34d16b,
                                          )),
                                      // empty: const Icon(Icons.star_outline, color:gray_868590,)),
                                      onRatingUpdate: (value) {
                                        setState(() {
                                          // _ratingValue = value;
                                        });
                                      }),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Container(
                              width: 1.w,
                              height: 59.h,
                              color: light_gray_f2f3f5,
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Text(
                              "315 Ratings &\n16 Reviews",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: fontSfProDisplayRegular,
                                  color: dark_silver_5d6266),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 1.h,
                        color: light_gray_f2f3f5,
                      ),
                      ListView.builder(
                        scrollDirection: Axis.vertical,
                        primary: false,
                        shrinkWrap: true,
                        itemCount: ratingList.length,
                        itemBuilder: (context, i) => Container(
                          margin: EdgeInsets.only(
                              left: 16.w, right: 16.w, bottom: 16.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GFImageOverlay(
                                    height: 38.h,
                                    width: 38.w,
                                    image: AssetImage(ratingList[i].imgPants),
                                    boxFit: BoxFit.cover,
                                    shape: BoxShape.circle,
                                    colorFilter: const ColorFilter.mode(
                                        Colors.white, BlendMode.darken),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          ratingList[i].tvPantsType,
                                          style: TextStyle(
                                              fontFamily:
                                                  fontSfProDisplayMedium,
                                              fontSize: 15.sp,
                                              color: title_black_121313),
                                        ),
                                        Text(
                                          ratingList[i].tvPrice,
                                          style: TextStyle(
                                              fontFamily:
                                                  fontSfProDisplayRegular,
                                              fontSize: 12.sp,
                                              color: silver_82868a),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Text(
                                          ratingList[i].tvDiscount,
                                          style: TextStyle(
                                              fontFamily:
                                                  fontSfProDisplayRegular,
                                              fontSize: 13.sp,
                                              color: title_black_121313),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 6.h, horizontal: 4.w),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(2.r),
                                        color: smoke_gray_f7f8fa),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          ratingList[i].tvCutPrice,
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontFamily:
                                                  fontSfProDisplaySemiBold,
                                              color: title_black_121313),
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        SvgPicture.asset(
                                          icon_star,
                                          color: green_34d16b,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Container(
                                height: 1.h,
                                color: light_gray_f2f3f5,
                              )
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "View all 16 reviews",
                          style: TextStyle(
                              fontSize: 13.sp,
                              fontFamily: fontSfProDisplaySemiBold,
                              color: blue_226beb),
                        ),
                      ),
                      SizedBox(
                        height: 38.h,
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              img_review_rating,
                              width: 170.w,
                              height: 170.h,
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Text(
                              str_No_review_rating_yet,
                              style: TextStyle(
                                  fontFamily: fontSfProDisplaySemiBold,
                                  fontSize: 16.sp,
                                  color: dark_silver_5d6266),
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.grey,
                            backgroundColor: Colors.white,
                            elevation: 0,
                            padding: EdgeInsets.symmetric(vertical: 14.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                              side: BorderSide(color: blue_226beb, width: 1.w),
                            ),
                          ),
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(
                                color: blue_226beb,
                                fontSize: 15.sp,
                                fontFamily: fontSfProDisplaySemiBold),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.grey,
                            backgroundColor: Colors.black,
                            elevation: 0,
                            padding: EdgeInsets.symmetric(vertical: 14.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                              // side: BorderSide(color: blue_226beb, width: 1.w),
                            ),
                          ),
                          child: Text(
                            "Buy Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontFamily: fontSfProDisplaySemiBold),
                          )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
