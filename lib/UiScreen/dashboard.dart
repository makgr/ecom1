import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ecom1/UiScreen/tab_cart.dart';
import 'package:ecom1/UiScreen/tab_home.dart';
import 'package:ecom1/UiScreen/tab_profile.dart';

import '../Styles/my_colors.dart';
import '../Styles/my_icons.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int pageIndex = 0;

  final pages = [
    const TabHome(),
    const TabHome(),
    const TabCart(),
    const TabProfile(),
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
        body: pages[pageIndex],
        bottomNavigationBar: buildMyNavBar(context),
      ),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 77.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 0;
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 46.h,
                  width: 46.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: pageIndex == 0 ? blue_226beb : Colors.transparent,
                  ),
                ),
                SvgPicture.asset(
                  icon_home,
                  color: pageIndex == 0 ? Colors.white : light_silver_b8b8b8,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 1;
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 46.h,
                  width: 46.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: pageIndex == 1 ? blue_226beb : Colors.transparent,
                  ),
                ),
                SvgPicture.asset(
                  icon_search,
                  color: pageIndex == 1 ? Colors.white : light_silver_b8b8b8,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 2;
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 46.h,
                  width: 46.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: pageIndex == 2 ? blue_226beb : Colors.transparent,
                  ),
                ),
                SvgPicture.asset(
                  icon_cart,
                  color: pageIndex == 2 ? Colors.white : light_silver_b8b8b8,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 3;
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 46.h,
                  width: 46.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: pageIndex == 3 ? blue_226beb : Colors.transparent,
                  ),
                ),
                SvgPicture.asset(
                  icon_profile,
                  color: pageIndex == 3 ? Colors.white : light_silver_b8b8b8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
