import 'package:apple_store/application/ui/main_navigation/main_navigation.dart';
import 'package:apple_store/application/ui/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ),
    );
    final mainNavigation = MainNavigation();
    return MaterialApp(
      title: 'Apple Store',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppTheme.dark(context),
      routes: mainNavigation.routes,
      initialRoute: MainNavigationScreens.mainScreen,
      onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}
