import 'package:flutter/material.dart';
import 'pages/CartPage.dart';
import 'pages/Homepage.dart';
import 'pages/ItemsPage.dart';
import 'utils/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      theme: ThemeData(
        scaffoldBackgroundColor: sBackgroundColor,
      ),
      routes: {
        "/": (context) => const Homepage(),
        "cartPage": (context) => const CartPage(),
        "itemPage": (context) => ItemsPage(),
      },
    );
  }
}
