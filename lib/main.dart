import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: use_super_parameters
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Changer',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: const ThemeChanger(),
    );
  }
}

class AppTheme {
  static final light = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFFFCCFF),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 252, 252, 252),
      elevation: 0,
    ),
    cardTheme: const CardTheme(
      color: Colors.white,
      elevation: 5,
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
        elevation: 0,
        shadowColor: Colors.red,
      ),
    ),
  );

  static final dark = ThemeData(
    scaffoldBackgroundColor: Colors.grey[900]!,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      elevation: 0,
    ),
    cardTheme: CardTheme(
      color: Colors.grey[800]!,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
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

class ThemeChanger extends StatefulWidget {
  // ignore: use_super_parameters
  const ThemeChanger({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ThemeChangerState createState() => _ThemeChangerState();
}

class _ThemeChangerState extends State<ThemeChanger> {
  bool isDarkMode = false;

  void changeTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeData = isDarkMode ? AppTheme.dark : AppTheme.light;

    return MaterialApp(
      title: 'Theme Changer',
      theme: themeData,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Theme Changer'),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: isDarkMode ? Colors.grey[800] : Colors.grey[200],
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: isDarkMode ? Colors.yellow : Colors.red,
                  offset: const Offset(0.0, 5.0),
                  blurRadius: 20.0,
                ),
                BoxShadow(
                  color: isDarkMode ? Colors.blue : Colors.blue,
                  offset: const Offset(0.0, -5.0),
                  blurRadius: 20.0,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Example Theme Text',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: changeTheme,
                  child: const Text('Change Theme'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}