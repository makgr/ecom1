import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Styles/my_colors.dart';

const boxDecoration = BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: shadow1_0x0f041d42,
        offset: Offset(0.0, 3.0),
        blurRadius: 21.0,
        spreadRadius: 0.0,
      )
    ],
);
final boxDecorationShadow = BoxDecoration(
    color: Colors.white,
    boxShadow: const [
      BoxShadow(
        color: shadow1_0x0f041d42,
        offset: Offset(0.0, 3.0),
        blurRadius: 21.0,
        spreadRadius: 0.0,
      )
    ],
    borderRadius: BorderRadius.all(Radius.circular(12.r))
);
//
// final selectboxDecoration = BoxDecoration(
//     // border: Border.all(color: bg_btn_199a8e, width: 1),
//     color: Colors.white,
//     boxShadow: [
//       BoxShadow(
//         color: shadow2_0x14000000,
//         offset: Offset(0.0, 4.0),
//         blurRadius: 14.0,
//         spreadRadius: 0.0,
//       )
//     ],
//     borderRadius: BorderRadius.all(Radius.circular(12.r)));
//
// final senderDecoration = BoxDecoration(
//     boxShadow: [
//       BoxShadow(
//         color: shadow3_0x14727576,
//         offset: Offset(0.0, 8.0),
//         blurRadius: 13.0,
//         spreadRadius: 0.0,
//       )
//     ],
//     color: Colors.white,
//     borderRadius: BorderRadius.all(Radius.circular(16.r)));
//
//
// final reciverDecoration = BoxDecoration(
//     boxShadow: [
//       BoxShadow(
//         color: smoke_d5d5d5,
//         offset: Offset(0.0, 8.0),
//         blurRadius: 13.0,
//         spreadRadius: 0.0,
//       )
//     ],
//     color: blue_226beb,
//     borderRadius: BorderRadius.all(Radius.circular(16.r)));
//
//
// final answerDecoration = BoxDecoration(
//     border: Border.all(color: blue_226beb, width: 1.w),
//     boxShadow: [
//       BoxShadow(
//         color: smoke_d5d5d5,
//         offset: Offset(0.0, 8.0),
//         blurRadius: 13.0,
//         spreadRadius: 0.0,
//       )
//     ],
//     color: Colors.white,
//     borderRadius: BorderRadius.all(Radius.circular(16.r)));