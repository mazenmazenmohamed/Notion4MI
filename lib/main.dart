import 'package:bloc/bloc.dart';
import 'package:bmi_calculator/layout/background.dart';
import 'package:bmi_calculator/shared/blocobserver.dart';
import 'package:flutter/material.dart';
import 'finsh_table/cross_axis_scroll.dart';
import 'image.dart';
import 'layout/textform.dart';
import 'layout/togglelist.dart';
import 'modules/login/Login_screen.dart';

void main() {
  BlocOverrides.runZoned(
        () {
      // Use blocs..
          },
    blocObserver: MyBlocObserver(),
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginScreen(),
    );
  }
}
