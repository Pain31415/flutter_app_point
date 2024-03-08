import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
    scaffoldBackgroundColor: const Color(0xFFFFCCFF),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFFFCCFF),
      elevation: 0,
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      shadowColor: Colors.yellow,
       clipBehavior:  Clip.antiAlias,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 15, 15, 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 10,
        shadowColor: Colors.red,
        
      ),
    ),
  );

  static ThemeData get dark => ThemeData(
    scaffoldBackgroundColor: Colors.grey[900]!,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[900],
      elevation: 0,
    ),
    cardTheme: CardTheme(
      color: Colors.grey[800]!,
     elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      shadowColor: Colors.red,
      clipBehavior:  Clip.antiAlias,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 0,
        shadowColor: Colors.yellow,
      ),
    ),
  );
}