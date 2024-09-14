import 'package:flutter/material.dart';
import 'package:theme_app/core/views/screen/home_screen.dart';
import 'package:theme_app/core/views/screen/not_found_screen.dart';
import 'package:theme_app/core/views/screen/product_screen.dart';

class RouteManager {
  static Route<dynamic>? appRoutes(RouteSettings route ){

    switch (route.name){

      case '/home': return MaterialPageRoute(builder: (ctx)=>const HomeScreen());
      case '/notfound': return MaterialPageRoute(builder: (ctx)=>const NotFoundScreen());
       case '/product': return MaterialPageRoute(builder: (ctx)=>const ProductScreen());

    }
  }

}