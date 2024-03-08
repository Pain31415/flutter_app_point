import 'package:flutter/material.dart';
import 'package:flutter_app_point/core/theme/theme_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends GetWidget<ThemeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Theme Changer'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Card(
              child: SizedBox(
                width: double.infinity,
                height: 200.0,
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
                      onPressed: (){
                        controller.changeTheme();
                      },
                      child: const Text('Change Theme'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }
}