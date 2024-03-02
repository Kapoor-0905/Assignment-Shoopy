import 'package:crezam_task/utils/colors.dart';
import 'package:crezam_task/views/navPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crezam Task',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
        fontFamily: "UrbanistRegular",
        primaryColor: primaryColor,
        dividerTheme:
            const DividerThemeData(color: Color(0xFF454545), thickness: 0.7),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const NavPage(),
    );
  }
}
