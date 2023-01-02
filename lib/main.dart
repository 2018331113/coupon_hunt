import 'package:coupon_hunt/config/routes.dart';
import 'package:coupon_hunt/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'widgets/screen_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: kPrimaryColor,
        scaffoldBackgroundColor: kPrimaryColor,
        appBarTheme: const AppBarTheme(
          toolbarHeight: 80,
          color: kPrimaryColor,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const ScreenWrapper(),
      onGenerateRoute: Routes.genrateRoute,
    );
  }
}
