import 'package:flutter/material.dart';
import 'package:uas_pm/home_page.dart';
import 'package:uas_pm/login_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage()
    );
  }
}