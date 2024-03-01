import 'package:flutter/material.dart';
import 'package:instagram_clone_app/view/splas_screen.dart';


void main() {
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen(),
    );
  }
}