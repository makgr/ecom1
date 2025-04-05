import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';

class ToolbarWithTitle extends StatelessWidget {
  final String title;
  const ToolbarWithTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child:SvgPicture.asset(icon_back_arrow,height: 24.h,width: 24.w,),),
          SizedBox(width: 24.w,),
          Flexible(
            child: Text(title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
              fontSize:20.sp,
              color: title_black_121313,
              fontFamily: fontSfProDisplaySemiBold
            ),),
          )
        ],
      ),
    );
  }
}