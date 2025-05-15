import 'package:doc_doc/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocDocLogoAndName extends StatelessWidget {
  const DocDocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/svgs/docdoc_logo.svg',
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          'DocDoc',
          style: AppStyles.font24Blackbold,
        ),
      ],
    );
  }
}
