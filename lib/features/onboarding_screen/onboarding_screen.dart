import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/core/theming/app_styles.dart';
import 'package:doc_doc/core/widgets/custom_elevated_button.dart';
import 'package:doc_doc/features/onboarding_screen/widgets/doc_doc_logo_and_name.dart';
import 'package:doc_doc/features/onboarding_screen/widgets/doctor_image_and_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
            child: Column(
              children: [
                DocDocLogoAndName(),
                SizedBox(
                  height: 20.h,
                ),
                DoctorImageAndTitle(),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: AppStyles.font12MainGrayRegular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      CustomElevatedButton(
                        buttonText: 'Get Started',
                        onPressed: () {
                          context.pushNamed(Routes.loginScreen);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
