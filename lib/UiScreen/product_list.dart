import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Model/product_list_model.dart';
import '../Styles/my_colors.dart';
import '../Styles/my_font.dart';
import '../Styles/my_icons.dart';
import '../Widgets/box_shadow.dart';
import 'bottomsheet_filter.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<ProductListModel> productList = [
    ProductListModel(img_spyker,"Spyker","\$20.00","\$45.00","(60% OFF)"),
    ProductListModel(img_jack,"Jack & Jones","\$20.00","\$45.00","(60% OFF)"),
    ProductListModel(img_wrong,"Pepe Jeans","\$20.00","\$45.00","(60% OFF)"),
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
                  child:  Text("Men Jeans",style: TextStyle(
                      fontSize:20.sp,
                      color: title_black_121313,
                      fontFamily: fontSfProDisplaySemiBold
                  ),),
                ),
                InkWell(
                  onTap: () {
                    selectFilter(context);
                  },
                  child: SvgPicture.asset(
                    icon_sort_arrow,
                    color: title_black_121313,
                    width: 24.w,
                    height: 24.h,
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 16.h,),
          Expanded(
            child: GridView.builder(
              primary: false,
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  childAspectRatio: 2.10/3,
                  crossAxisSpacing: 13),
              itemCount: productList.length,
              itemBuilder: (context, i) {
                return Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6.r),
                        child:Image.asset(productList[i].imgPants,height: 170.h,fit: BoxFit.cover,width: double.infinity,)
                      ),
                      SizedBox(height: 10.h,),
                      Text(productList[i].tvPantsType,style: TextStyle(
                          fontFamily: fontSfProDisplayMedium,fontSize: 15.sp,color: title_black_121313
                      ),),
                      SizedBox(height: 2.h,),
                      Text(productList[i].tvPrice,style: TextStyle(
                          fontFamily: fontSfProDisplaySemiBold,fontSize: 14.sp,color: title_black_121313
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(productList[i].tvCutPrice,style: TextStyle(
                              fontFamily: fontSfProDisplayRegular,fontSize: 12.sp,color: silver_82868a,
                              decoration: TextDecoration.lineThrough
                          ),),
                          SizedBox(width: 4.w,),
                          Text(productList[i].tvDiscount,style: TextStyle(
                              fontFamily: fontSfProDisplayRegular,fontSize: 10.sp,color: red_ff4848
                          ),),
                        ],
                      ),
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
  void selectFilter(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context,) {
          return Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r))),
              child: const SingleChildScrollView(
                child: Wrap(
                  children: [
                    BottomSheetFilter()
                  ],
                ),
              ));
        });
  }

}
