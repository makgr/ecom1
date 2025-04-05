import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Model/banner_list_model.dart';
import '../Model/category_grid_model.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';
import '../Widgets/box_shadow.dart';

class TabHome extends StatefulWidget {
  const TabHome({super.key});

  @override
  State<TabHome> createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  List<CategoryGridModel> categoryList = [
    CategoryGridModel(img_men, "Men"),
    CategoryGridModel(img_women, "Women"),
    CategoryGridModel(img_kids, "Kids"),
    CategoryGridModel(img_beauty, "Beauty"),
    CategoryGridModel(img_bags, "Bags"),
    CategoryGridModel(img_watches, "Watches"),
  ];
  List<BannerListModel> bannerList = [
    BannerListModel(img_banner),
    BannerListModel(img_banner),
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
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
              decoration: boxDecoration,
              child: SvgPicture.asset(
                icon_logo_shopy,
                width: 89.w,
                height: 30.h,
              )),
          SizedBox(
            height: 16.h,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 160.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        primary: false,
                        shrinkWrap: true,
                        padding: EdgeInsets.only(left: 16.w),
                        itemCount: bannerList.length,
                        itemBuilder: (context, i) => Container(
                          margin: EdgeInsets.only(right: 20.w),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6.r),
                            child: Image.asset(
                              bannerList[i].imgBanner,
                              width: 300.w,
                              height: 160.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16.w),
                      child: Text(
                        str_shop_by_category,
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: fontSfProDisplaySemiBold,
                            color: title_black_121313),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    GridView.builder(
                      primary: false,
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          childAspectRatio:2.0/3,
                          crossAxisSpacing: 15),
                      itemCount: categoryList.length,
                      itemBuilder: (context, i) {
                        return Container(
                          // color: Colors.pink,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 210.h,
                                width: 164.w,
                                decoration: BoxDecoration(
                                    color: smoke_gray_f7f8fa,
                                    borderRadius: BorderRadius.circular(11.r)),
                                child: Image.asset(categoryList[i].imgCategory,
                                    fit: BoxFit.cover),
                              ),
                              SizedBox(
                                height: 11.h,
                              ),
                              Center(
                                child: Text(
                                  categoryList[i].tvCategoryType,
                                  style: TextStyle(
                                      fontFamily: fontSfProDisplayMedium,
                                      fontSize: 15.sp,
                                      color: title_black_121313),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 24.w, right: 24.w, bottom: 35.h),
                      padding: EdgeInsets.symmetric(
                          vertical: 16.h, horizontal: 45.w),
                      decoration: boxDecoration,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            str_how_can_we_help_you,
                            style: TextStyle(
                                fontFamily: fontSfProDisplaySemiBold,
                                fontSize: 18.sp,
                                color: title_black_121313),
                          ),
                          SizedBox(
                            height: 22.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.h),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: line_e2e3e5, width: 1.w),
                                      borderRadius: BorderRadius.circular(8.r)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        icon_call_blue,
                                        color: Colors.black,
                                      ),
                                      SizedBox(width: 4.w),
                                      Text(
                                        str_call_us,
                                        style: TextStyle(
                                            fontSize: 13.sp,
                                            fontFamily:
                                                fontSfProDisplaySemiBold,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 36.w,
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.h),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: line_e2e3e5, width: 1.w),
                                      borderRadius: BorderRadius.circular(8.r)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        icon_email_blue,
                                        color: Colors.black,
                                      ),
                                      SizedBox(width: 4.w),
                                      Text(
                                        str_mail_us,
                                        style: TextStyle(
                                            fontSize: 13.sp,
                                            fontFamily:
                                                fontSfProDisplaySemiBold,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
            ),
          )
        ],
      ),
    ));
  }
}
