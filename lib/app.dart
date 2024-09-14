import 'package:flutter/material.dart';
import 'package:theme_app/core/themes/app_theme.dart';
import 'package:theme_app/helper/route_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/product',
      onGenerateRoute: RouteManager.appRoutes,

      theme: appLightTheme,
      darkTheme: ThemeData.dark(useMaterial3: false),
      themeMode: ThemeMode.light,   
     
    
    );
  }
}
