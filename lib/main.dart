import 'package:boite_connexion_ui/screens/login_screen.dart';
import 'package:boite_connexion_ui/screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginScreen(),
      routes: {
        '/signup' : (context) => SignupScreen(),
        '/login'  : (context) => LoginScreen()
      },
    );

  }
}

