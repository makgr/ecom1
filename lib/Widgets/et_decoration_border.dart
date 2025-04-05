import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Styles/my_colors.dart';
final lineBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(11.r),
  borderSide: BorderSide(
      width: 1.w, color: line_e2e3e5),
);

final focusBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(11.r),
  borderSide: BorderSide(
      width: 1.w, color: Colors.black),
);

final focusErrorBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(11.r),
  borderSide: BorderSide(
      width: 1.w, color: Colors.yellow),
);

final errorBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(11.r),
  borderSide: BorderSide(
      width: 1.w, color:line_e2e3e5),
);