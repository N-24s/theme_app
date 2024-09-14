import 'package:flutter/material.dart';

ThemeData appLightTheme=ThemeData(
useMaterial3: false,
textTheme: const TextTheme(
  bodyLarge: TextStyle(
    color: Colors.green,
    fontSize: 22,
    
  )
),
elevatedButtonTheme:  ElevatedButtonThemeData(

  style: ButtonStyle(
 
    shape: const WidgetStatePropertyAll<OutlinedBorder>(
      RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
      ),

      // backgroundColor: const WidgetStatePropertyAll<Color>(

      //   Colors.brown
      // ),
        backgroundColor:   WidgetStateProperty.all<Color>(

        Colors.brown
      ),
      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.all(10)
        
      ),
  

  )
)

);
ThemeData appDarkTheme=ThemeData();