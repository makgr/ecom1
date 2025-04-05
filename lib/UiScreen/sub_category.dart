import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';import '../Model/category_grid_model.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';


import '../Widgets/box_shadow.dart';
class SubCategory extends StatefulWidget {
  const SubCategory({super.key});

  @override
  State<SubCategory> createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  List<CategoryGridModel> categoryList = [
    CategoryGridModel(img_t_shirt,"T-Shirt"),
    CategoryGridModel(img_shirt,"Shirt"),
    CategoryGridModel(img_jeans,"Jeans"),
    CategoryGridModel(img_footwear,"Footwear"),
    CategoryGridModel(img_sport_bag,"Bags"),
    CategoryGridModel(img_brand_watches,"Watches"),
    CategoryGridModel(img_shorts,"Shorts"),
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
                  width: 24.w,
                ),
                Expanded(
                  child:  Text("Men",style: TextStyle(
                      fontSize:20.sp,
                      color: title_black_121313,
                      fontFamily: fontSfProDisplaySemiBold
                  ),),
                ),
                SvgPicture.asset(
                  icon_search,
                  color: title_black_121313,
                  width: 24.w,
                  height: 24.h,
                )
              ],
            ),
          ),
          SizedBox(height: 20.h,),
          Expanded(
            child: GridView.builder(
              primary: false,
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 16,
                  childAspectRatio: 2.40/3,
                  crossAxisSpacing: 11),
              itemCount: categoryList.length,
              itemBuilder: (context, i) {
                return  Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 107.h,
                        width: 107.w,decoration: BoxDecoration(
                          color: smoke_gray_f7f8fa,
                          borderRadius: BorderRadius.circular(6.r)
                      ),child:
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6.r),
                        child: Image.asset(categoryList[i].imgCategory,height: 107.h,width:107.w,fit: BoxFit.cover,),
                      ),
                      ),
                      SizedBox(height: 6.h,),

                      Center(
                        child: Text(categoryList[i].tvCategoryType,style: TextStyle(
                            fontFamily: fontSfProDisplayMedium,fontSize: 15.sp,color: title_black_121313
                        ),),
                      )
                    ],
                  ),
                );
              },
            ),
          ),

        ],
      ),
    ));
  }
}
