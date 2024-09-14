import 'package:flutter/material.dart';
import 'package:theme_app/core/themes/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
TextTheme txtTheme=Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text("HomeScreen"),),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text("Applcation",style: txtTheme.bodyLarge,),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, 
          
            child: const Text("Save Data"),style:appLightTheme.elevatedButtonTheme.style)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},child:  Icon(Icons.add),
       ),
    );
  }
}