import 'package:flutter/material.dart';
import 'package:projeto_arquitetura/app/pages/home/home_page.dart';
import 'app_controller.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: AppController.instance.themeSwitch,
      builder: (context, isDark, child){
      return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(        
        primarySwatch: Colors.blue,       
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: isDark ? Brightness.dark: Brightness.light,
      ),
      home: HomePage(),
    );
    },);
  }
}