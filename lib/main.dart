import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';
import 'details_page.dart';
import 'info_text_page.dart';


void main() => runApp(CoffeeExplorerApp());

class CoffeeExplorerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Coffee Explorer',
  theme: ThemeData(
    fontFamily: 'Roboto', // Optional: use custom fonts later
    brightness: Brightness.light,
    scaffoldBackgroundColor: Color(0xFFFAF3E0), // soft creamy background
    primaryColor: Color(0xFF6F4E37), // rich coffee brown
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: Color(0xFF6F4E37), // coffee brown
      secondary: Color(0xFFDAB894), // latte-like accent
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF6F4E37),
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0xFFDAB894), // creamy tan
      foregroundColor: Colors.black,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
    ),
  ),
  home: HomePage(),
);

  }
}

