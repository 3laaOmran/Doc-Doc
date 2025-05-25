import 'package:doc_doc/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class AccountQuestion extends StatelessWidget {
  final String question;
  final String actionName;
  const AccountQuestion(
      {super.key, required this.question, required this.actionName});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: question,
        style: AppStyles.font14DarkBlueRegular,
      ),
      TextSpan(
        text: actionName,
        style: AppStyles.font14MainBlueRegular,
      ),
    ]));
  }
}
