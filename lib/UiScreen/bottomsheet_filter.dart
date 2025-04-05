import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Model/search_list_model.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Styles/my_strings.dart';

class BottomSheetFilter extends StatefulWidget {
  const BottomSheetFilter({super.key});

  @override
  State<BottomSheetFilter> createState() => _BottomSheetFilterState();
}

class _BottomSheetFilterState extends State<BottomSheetFilter> {
  int checkedIndex = -1;
  List<SearchListModel> filterList = [
    SearchListModel("Popular"),
    SearchListModel("Price : Low to High"),
    SearchListModel("Price : High to Low"),
  ];
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 12.h),
              width: 40.w,
              height: 3.h,
              decoration: BoxDecoration(
                  color: line_e2e3e5,
                  borderRadius: BorderRadius.circular(5.r)),
            ),
          ),
          SizedBox(height: 10.h,),
          Text(str_sort_by,style: TextStyle(
              fontSize:18.sp,
              color: title_black_121313,
              fontFamily: fontSfProDisplaySemiBold
          ),),
          SizedBox(height: 16.h,),

          ListView.builder(
            scrollDirection: Axis.vertical,
            primary: false,
            shrinkWrap: true,
            itemCount: filterList.length,
            itemBuilder: (context, i) {
              bool checked = i == checkedIndex;
              return InkWell(
                  onTap: () {
                    setState(() {
                      checkedIndex = i;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 18.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(filterList[i].tvTitle,style: TextStyle(
                            fontSize: 15.sp,fontFamily: fontSfProDisplayMedium,color:
                        checkedIndex == i ? blue_226beb :title_black_121313
                        ),),
                        Offstage(
                          offstage: !checked,child: SvgPicture.asset(icon_selected,width: 24.w,height: 24.h,),
                        )

                      ],
                    ),
                  ),
                );
            }

          ),
          SizedBox(height: 16.h,),

        ],
      ),
    );
  }
}