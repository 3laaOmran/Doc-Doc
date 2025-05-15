import 'package:doc_doc/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle font24Blackbold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static TextStyle font32MainBlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.mainBlueColor,
  );
  static TextStyle font12MainGrayRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.mainGray,
  );
  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w600
  );
}
