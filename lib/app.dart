import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:parking_app/utils/constants/text_strings.dart';
import 'package:parking_app/utils/theme/theme.dart';
import 'package:parking_app/features/authentication/screens/onboarding/onboarding.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: ptexts.appName,
      themeMode: ThemeMode.system,
      theme: pApptheme.lightTheme,
      darkTheme: pApptheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home: const OnBoardingScreen(),
    ); // Removed the extra closing parenthesis here
  }
}
