import 'package:doc_doc/core/theming/app_colors.dart';
import 'package:doc_doc/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle font24Blackbold = GoogleFonts.inter(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle font32MainBlueBold = GoogleFonts.inter(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.mainBlueColor,
  );
  static TextStyle font24BlueBold = GoogleFonts.inter(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.mainBlueColor,
  );
  static TextStyle font12MainGrayRegular = GoogleFonts.inter(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.mainGray,
  );
  static TextStyle font14LightGrayRegular = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.lightGray,
  );
  static TextStyle font14MainBlueRegular = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.mainBlueColor,
  );
  static TextStyle font14DarkBlueMedium = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.darkBlue,
  );
  static TextStyle font14DarkBlueBold = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.darkBlue,
  );
  static TextStyle font14DarkBlueRegular = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.darkBlue,
  );
  static TextStyle font14MainGrayRegular = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.mainGray,
  );
  static TextStyle font16WhiteSemiBold = GoogleFonts.inter(
      fontSize: 16, color: Colors.white, fontWeight: FontWeightHelper.semiBold);
}
