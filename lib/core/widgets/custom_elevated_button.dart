import 'package:doc_doc/core/theming/app_colors.dart';
import 'package:doc_doc/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function() onPressed;
  final String buttonText;
  const CustomElevatedButton(
      {super.key, required this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          backgroundColor: AppColors.mainBlueColor,
          padding: EdgeInsets.symmetric(vertical: 15.h)),
      child: Text(
        buttonText,
        style: AppStyles.font16WhiteSemiBold,
      ),
    );
  }
}
