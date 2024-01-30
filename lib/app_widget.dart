import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

import 'home_page_state.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: AppController.instance, builder: (context, child) {
      return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppController.instance.isDarkTheme
                  ? Brightness.dark
                  : Brightness.light,
              appBarTheme: const AppBarTheme(backgroundColor: Colors.red)),
          home: HomePage());
    });
  }
}
