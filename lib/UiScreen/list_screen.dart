import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:ecom1/UiScreen/product_detail.dart';
import 'package:ecom1/UiScreen/product_list.dart';
import 'package:ecom1/UiScreen/review_rating_form.dart';
import 'package:ecom1/UiScreen/review_rating_list.dart';
import 'package:ecom1/UiScreen/search.dart';
import 'package:ecom1/UiScreen/search_active.dart';
import 'package:ecom1/UiScreen/shipping_address.dart';
import 'package:ecom1/UiScreen/splash_screen.dart';
import 'package:ecom1/UiScreen/sub_category.dart';
import 'package:ecom1/UiScreen/terms_and_conditions.dart';
import '../Styles/my_font.dart';
import 'add_new_address.dart';
import 'cart.dart';
import 'coupon_list.dart';
import 'dashboard.dart';
import 'help_support.dart';
import 'login.dart';
import 'my_orders.dart';
import 'order_details.dart';
import 'order_details_delivered.dart';
import 'order_successful.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.h),
              Center(
                child: Text(
                  "List of Screen",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontFamily: fontSfProDisplayMedium,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SplashScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "1.SplashScreen Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "2.Login Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Dashboard()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "3.Dashboard Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Search()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "4.Search Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchActive(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "5.SearchActive Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SubCategory(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "6.SubCategory Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductList(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "7.ProductList Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductDetail(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "8.ProductDetail Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReviewRatingList(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "9.ReviewRatingList Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Cart()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "10.Cart Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddNewAddress(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "11.AddNewAddress Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CouponList()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "12.CouponList Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrderSuccessful(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "13.OrderSuccessful Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyOrders()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "14.MyOrders Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrderDetails(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "15.OrderDetails Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrderDetailsDelivered(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "16.OrderDetailsDelivered Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReviewRatingForm(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "17.ReviewRatingForm Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ShippingAddress(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "18.ShippingAddress Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HelpSupport(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "19.HelpSupport Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TermsAndConditions(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.h,
                    horizontal: 12.w,
                  ),
                  child: Text(
                    "20.TermsAndConditions Screen",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: fontSfProDisplayMedium,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
