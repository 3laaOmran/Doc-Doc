import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/app_colors.dart';
import 'package:doc_doc/core/theming/app_styles.dart';
import 'package:doc_doc/core/widgets/app_text_form_field.dart';
import 'package:doc_doc/core/widgets/custom_elevated_button.dart';
import 'package:doc_doc/features/login/ui/widgets/account_question.dart';
import 'package:doc_doc/features/login/ui/widgets/other_login_methods_widget.dart';
import 'package:doc_doc/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: AppStyles.font24BlueBold,
                ),
                verticalSpace(10),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: AppStyles.font12MainGrayRegular,
                ),
                verticalSpace(30),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        AppTextFormField(
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return 'please Enter your email first';
                            }
                            return null;
                          },
                          controller: emailController,
                          hintText: 'Email',
                        ),
                        verticalSpace(20),
                        AppTextFormField(
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return 'please Enter password';
                            }
                            return null;
                          },
                          controller: passwordController,
                          hintText: 'Password',
                          isObscureText: isObsecure,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              isObsecure = !isObsecure;
                              setState(() {});
                            },
                            child: Icon(
                              isObsecure
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                        ),
                        verticalSpace(20),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Forget Password ?',
                              style: AppStyles.font14MainBlueRegular,
                            ),
                          ),
                        ),
                        verticalSpace(30),
                        SizedBox(
                          width: double.infinity,
                          child: CustomElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {}
                            },
                            buttonText: 'Login',
                          ),
                        ),
                        verticalSpace(40),
                        Row(children: [
                          Expanded(
                            child: Divider(
                              endIndent: 10.w,
                              color: AppColors.lightGray,
                              thickness: 1.3,
                            ),
                          ),
                          Text(
                            'Or log in with',
                            style: AppStyles.font14LightGrayRegular,
                          ),
                          Expanded(
                            child: Divider(
                              indent: 10.w,
                              color: AppColors.lightGray,
                              thickness: 1.3,
                            ),
                          ),
                        ]),
                        verticalSpace(30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OtherLoginMethodsWidget(
                              onTap: () {},
                              image: 'assets/svgs/google_logo.svg',
                            ),
                            OtherLoginMethodsWidget(
                              onTap: () {},
                              image: 'assets/svgs/facebook_logo.svg',
                            ),
                          ],
                        ),
                        verticalSpace(30),
                        TermsAndConditionsText(),
                        verticalSpace(25),
                        AccountQuestion(
                          question: 'Don\'t have an account? ',
                          actionName: 'Sign Up',
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
