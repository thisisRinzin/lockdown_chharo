import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lockdown_chharo/app_theme.dart';
import 'package:lockdown_chharo/dependency_injection/injection.dart';
import 'package:lockdown_chharo/ui/pages/register/register_page.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme(),
      home: RegisterPage(),
    );
  }
}
