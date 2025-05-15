import 'package:doc_doc/core/routing/app_router.dart';
import 'package:doc_doc/doc_doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp( DocDoc(
    appRouter: AppRouter(),
  ));
}
