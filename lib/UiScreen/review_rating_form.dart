import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';
import '../Widgets/box_shadow.dart';
import '../Widgets/toolbar_with_title.dart';

class ReviewRatingForm extends StatefulWidget {
  const ReviewRatingForm({super.key});

  @override
  State<ReviewRatingForm> createState() => _ReviewRatingFormState();
}

class _ReviewRatingFormState extends State<ReviewRatingForm> {
  int numLines = 0;
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
              child: ToolbarWithTitle(str_ratings_reviews)),
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
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6.r),
                            child: Image.asset(
                              img_spyker,
                              height: 56.h,
                              width: 56.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 14.h,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pepe Jeans",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: fontSfProDisplayMedium,
                                    color: title_blacks_212121),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Text(
                                "Men/Jeans",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontFamily: fontSfProDisplayRegular,
                                    color: dark_gray_616161),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 1.h,
                        color: light_gray_f2f3f5,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        str_Rate_product,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: fontSfProDisplayMedium,
                            color: title_blacks_212121),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      RatingBar(
                          itemSize: 45,
                          initialRating: 0,
                          glowColor: Colors.transparent,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 0.0),
                          ratingWidget: RatingWidget(
                              full: SvgPicture.asset(
                                icon_star,
                                width: 40.w,
                                height: 40.h,
                                color: green_34d16b,
                              ),
                              // full: const Icon(Icons.star, color:yellow_FFC80h0),
                              half: SvgPicture.asset(
                                icon_star,
                                width: 40.w,
                                height: 40.h,
                                color: green_34d16b,
                              ),
                              // half: const Icon(Icons.star_half, color:yellow_FFC800,),
                              empty: SvgPicture.asset(
                                icon_star,
                                width: 40.w,
                                height: 40.h,
                                color: line_e2e3e5,
                              )),
                          // empty: const Icon(Icons.star_outline, color:gray_868590,)),
                          onRatingUpdate: (value) {
                            setState(() {
                              // _ratingValue = value;
                            });
                          }),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        str_Write_Review,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: fontSfProDisplayMedium,
                            color: title_black_121313),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.h, horizontal: 14.w),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(11.r)),
                            color: Colors.white,
                            border: Border.all(color: line_e2e3e5, width: 1.w)),
                        child: TextFormField(
                          maxLines: numLines < 6 ? 6 : numLines,
                          keyboardType: TextInputType.multiline,
                          textInputAction: TextInputAction.newline,
                          style: TextStyle(
                              color: title_black_121313,
                              height: 1.5,
                              fontFamily: fontSfProDisplayMedium,
                              fontSize: 14.sp),
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: str_Write_Review,
                            hintStyle: TextStyle(
                                color: title_black_121313,
                                height: 1.5,
                                fontFamily: fontSfProDisplayMedium,
                                fontSize: 14.sp),
                            border: InputBorder.none,
                          ),
                          onChanged: (String value) {
                            setState(() {
                              numLines = '\n'.allMatches(value).length + 1;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30.w, right: 30.h),
                        width: double.infinity,
                        height: 56.h,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.black,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.r),
                                // side: BorderSide(color: skygreen_24d39e, width: 0),
                              ),
                            ),
                            child: Text(
                              str_Submit,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontFamily: fontSfProDisplaySemiBold),
                            )),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ]),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
