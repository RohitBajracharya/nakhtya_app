import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nakhtya_app/utils/routes/route.dart';
import 'package:nakhtya_app/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nakhtya',
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialRoute: TRoutes.getCustomerLoginScreen(),
      getPages: TRoutes.routes,
      transitionDuration: const Duration(seconds: 1),
    );
  }
}
