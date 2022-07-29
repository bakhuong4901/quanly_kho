import 'package:flutter/material.dart';
import 'package:quanly_kho/login_page/login_page.dart';
import 'package:quanly_kho/splash_page.dart';

void main() => runApp(const MyApp()); // initiate MyApp as  StatelessWidget
class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const LoginPage(),
    );
  }
}

