import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/locator.dart';
import 'package:portfolio/views/layout_template/layout_template.dart';

import 'Colors/colors.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aditya Lalwani',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Coolors.secondaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: LayoutTemplate(),
    );
  }
}
