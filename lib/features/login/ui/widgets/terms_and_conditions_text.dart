import 'package:doc_doc/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
            text: 'By logging. you agree to Our',
            style: AppStyles.font12MainGrayRegular,
          ),
          TextSpan(
            text: ' Terms & Conditions ',
            style: AppStyles.font14DarkBlueBold,
          ),
          TextSpan(
            text: 'and ',
            style: AppStyles.font12MainGrayRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: AppStyles.font14DarkBlueBold,
          ),
        ]));
  }
}
