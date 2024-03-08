import 'package:flutter/material.dart';
import 'package:flutter_app_point/binding.dart';
import 'package:flutter_app_point/core/presenation/screen/home/home_screen.dart';
import 'package:flutter_app_point/core/theme/theme.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Theme Changer',
      debugShowCheckedModeBanner: false,
      initialBinding: AppBindings(),
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    );
  }
}