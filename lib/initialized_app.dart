import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_speed_test_app/pages/speed_test_page.dart';
import 'package:my_speed_test_app/shared/themes/theme_data.dart';

class InitializedApp extends StatelessWidget {
  
  const InitializedApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MY Speed Test APP',
      defaultTransition: Transition.rightToLeft,
      debugShowCheckedModeBanner: false,
      theme: CCTheme.lightTheme,
      // locale: AuthorizedServices.newInstance().getLanguage().toLocale(),
      // fallbackLocale: LanguageModel.khmer.toLocale(),
      home: const SpeedTestPage(),
    );
  }
}
