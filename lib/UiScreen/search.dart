import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Model/search_list_model.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_strings.dart';
import '../Widgets/box_shadow.dart';
import '../Styles/my_font.dart';
import 'dashboard.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<SearchListModel> searchList = [
    SearchListModel("men black jeans"),
    SearchListModel("reebok classic tshirt"),
    SearchListModel("libas black dress"),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white, // navigation bar color
        statusBarColor: Colors.white, // status bar color
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness:
            Brightness.light, //navigation bar icons' color
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
              decoration: boxDecoration,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(width: 14.w),
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                        color: title_black_121313,
                        fontFamily: fontSfProDisplaySemiBold,
                        fontSize: 14.sp,
                      ),
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: str_search,
                        contentPadding: const EdgeInsets.all(0),
                        hintStyle: TextStyle(
                          color: silver_82868a,
                          fontFamily: fontSfProDisplaySemiBold,
                          fontSize: 14.sp,
                        ),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.text,
                      cursorColor: title_black_121313,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  SvgPicture.asset(
                    icon_cancel,
                    color: silver_82868a,
                    width: 20.w,
                    height: 20.h,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    str_recent_search,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: fontSfProDisplaySemiBold,
                      color: title_black_121313,
                    ),
                  ),
                  Text(
                    str_clear,
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontFamily: fontSfProDisplaySemiBold,
                      color: silver_82868a,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                primary: false,
                shrinkWrap: true,
                itemCount: searchList.length,
                itemBuilder:
                    (context, i) => Container(
                      margin: EdgeInsets.only(
                        left: 16.w,
                        bottom: 10.h,
                        right: 16.w,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            searchList[i].tvTitle,
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontFamily: fontSfProDisplayRegular,
                              color: dark_silver_5d6266,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.h),
                            height: 1.h,
                            color: light_gray_f2f3f5,
                          ),
                        ],
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
