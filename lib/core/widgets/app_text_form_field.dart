import 'package:doc_doc/core/theming/app_colors.dart';
import 'package:doc_doc/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final TextStyle? hintStyle;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Color? backgroundColor;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final EdgeInsetsGeometry? contentPadding;

  const AppTextFormField({
    super.key,
    required this.hintText,
    this.hintStyle,
    this.backgroundColor,
    this.isObscureText,
    this.suffixIcon,
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    required this.controller,
    this.validator,
    this.focusedErrorBorder,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.mainBlueColor,
      cursorErrorColor: Colors.red,
      validator: validator,
      controller: controller,
      style: AppStyles.font14DarkBlueMedium,
      obscureText: isObscureText ?? false,
      decoration: InputDecoration(
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        suffixIcon: suffixIcon,
        isDense: true,
        hintText: hintText,
        hintStyle: hintStyle ?? AppStyles.font14LightGrayRegular,
        filled: true,
        fillColor: backgroundColor ?? AppColors.theMostLightGray,
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: const BorderSide(
                color: AppColors.lighterGray,
                width: 1.3,
              ),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: AppColors.mainBlueColor,
                width: 1.3,
              ),
            ),
        errorBorder: errorBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: Colors.red,
                width: 1.3,
              ),
            ),
        focusedErrorBorder: focusedErrorBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: Colors.red,
                width: 1.3,
              ),
            ),
      ),
    );
  }
}
