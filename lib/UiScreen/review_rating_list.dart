import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';

import '../Model/product_list_model.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';
import '../Widgets/box_shadow.dart';
import '../Widgets/toolbar_with_title.dart';

class ReviewRatingList extends StatefulWidget {
  const ReviewRatingList({super.key});

  @override
  State<ReviewRatingList> createState() => _ReviewRatingListState();
}

class _ReviewRatingListState extends State<ReviewRatingList> {
  List<ProductListModel> ratingList = [
    ProductListModel(img_men_circle,"Kintan","6 days ago","4.5","The fitting is very good, color is cool. but fabric is not good."),
    ProductListModel(img_men_circle,"Kintan","6 days ago","4.5","The fitting is very good, color is cool. but fabric is not good."),
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
              child: ToolbarWithTitle(str_ratings_reviews)),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                            Text("4.5",style: TextStyle
                              (fontSize: 28.sp,fontFamily: fontSfProDisplaySemiBold,color: title_black_121313),),
                            SizedBox(height: 2.h,),
                            Center(
                              child: RatingBar(
                                  itemSize: 25,
                                  initialRating: 0,
                                  glowColor: Colors.transparent,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                                  ratingWidget: RatingWidget(
                                      full: SvgPicture.asset(icon_star,width: 18.w,height: 18.h,color: blue_226beb,),
                                      // full: const Icon(Icons.star, color:yellow_FFC80h0),
                                      half: SvgPicture.asset(icon_star,width: 18.w,height: 18.h,color: blue_226beb,),
                                      // half: const Icon(Icons.star_half, color:yellow_FFC800,),
                                      empty:SvgPicture.asset(icon_star,width: 18.w,height: 18.h,color: blue_226beb,)),
                                  // empty: const Icon(Icons.star_outline, color:gray_868590,)),
                                  onRatingUpdate: (value) {
                                    setState(() {
                                      // _ratingValue = value;
                                    });
                                  }),
                            ),
                          ],
                        ),
                        SizedBox(width: 20.w,),
                        Container(
                          width: 1.w,
                          height: 59.h,
                          color: light_gray_f2f3f5,
                        ),
                        SizedBox(width: 16.w,),
                        Text("315 Ratings &\n16 Reviews",style: TextStyle(fontSize: 12.sp,fontFamily: fontSfProDisplayRegular,
                            color: dark_silver_5d6266),),


                      ],
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Container(
                    height: 1.h,
                    color: light_gray_f2f3f5,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    primary: false,
                    shrinkWrap: true,
                    itemCount: ratingList.length,
                    itemBuilder: (context, i) => Container(
                      margin: EdgeInsets.only(left: 16.w,right: 16.w,bottom: 16.h),
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
                                colorFilter: const ColorFilter.mode(Colors.white,BlendMode.darken),
                              ),
                              SizedBox(width: 15.w,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text(ratingList[i].tvPantsType,style: TextStyle(
                                        fontFamily: fontSfProDisplayMedium,fontSize: 15.sp,color: title_black_121313
                                    ),),
                                    Text(ratingList[i].tvPrice,style: TextStyle(
                                        fontFamily: fontSfProDisplayRegular,fontSize: 12.sp,color: silver_82868a
                                    ),),
                                    SizedBox(height: 8.h,),
                                    Text(ratingList[i].tvDiscount,style: TextStyle(
                                        fontFamily: fontSfProDisplayRegular,fontSize: 13.sp,color: title_black_121313
                                    ),),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 6.h,horizontal: 4.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.r),
                                    color: smoke_gray_f7f8fa
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(ratingList[i].tvCutPrice,
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          fontFamily: fontSfProDisplaySemiBold,
                                          color: title_black_121313),
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    SvgPicture.asset(icon_star)
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16.h,),
                          Container(height: 1.h,color: light_gray_f2f3f5,)
                        ],
                      ),
                    ),

                  ),

                ],
              ),
            ),
          )

        ],
      ),
    ));
  }
}
