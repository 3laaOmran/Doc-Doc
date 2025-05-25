import 'package:doc_doc/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OtherLoginMethodsWidget extends StatelessWidget {
  final String image;
  final void Function() onTap;
  const OtherLoginMethodsWidget({super.key, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: AppColors.lighterGray,
            borderRadius: BorderRadius.circular(50.r)),
        child: SvgPicture.asset(image),
      ),
    );
  }
}
