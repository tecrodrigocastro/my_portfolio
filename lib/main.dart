import 'package:flutter/material.dart';

import 'package:redrodrigo_portfolio/version2/app/global/color_schema.dart';
import 'package:redrodrigo_portfolio/version2/app/modules/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rodrigo Castro',
      theme: ThemeData(
        backgroundColor: backgroundColor,
        fontFamily: 'FiraCode',
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomeScreenV2(),
    );
  }
}
