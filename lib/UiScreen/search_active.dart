import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Model/jeans_list_model.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';
import '../Widgets/box_shadow.dart';

class SearchActive extends StatefulWidget {
  const SearchActive({super.key});

  @override
  State<SearchActive> createState() => _SearchActiveState();
}

class _SearchActiveState extends State<SearchActive> {
  List<JeansListModel> jeansList = [
    JeansListModel(img_jeans_men,"Jeans pants","Men"),
    JeansListModel(img_jeans_women,"Jeans pants","Women"),
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
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
            decoration: boxDecoration,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    icon_back_arrow,
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
                SizedBox(
                  width: 14.w,
                ),
                Expanded(
                  child: TextField(
                    style: TextStyle(
                        color: title_black_121313,
                        fontFamily: fontSfProDisplaySemiBold,
                        fontSize: 14.sp),
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: str_search,
                      contentPadding: const EdgeInsets.all(0),
                      hintStyle: TextStyle(
                          color: silver_82868a,
                          fontFamily: fontSfProDisplaySemiBold,
                          fontSize: 14.sp),
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
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              primary: false,
              shrinkWrap: true,
              itemCount: jeansList.length,
              itemBuilder: (context, i) => Container(
                margin: EdgeInsets.only(left: 16.w, bottom: 10.h, right: 16.w),
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
                          child: Image.asset(jeansList[i].imgJeans,height: 54.h,width:54.w,fit: BoxFit.cover,),
                        ),
                        SizedBox(width: 10.h,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              jeansList[i].tvTitle,
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontFamily: fontSfProDisplayMedium,
                                  color: title_black_121313),
                            ),
                            SizedBox(height: 4.h,),
                            Text(
                              jeansList[i].tvSubTitle,
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: fontSfProDisplayRegular,
                                  color: silver_82868a),
                            ),

                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 19.h),
                      height: 1.h,
                      color: light_gray_f2f3f5,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
