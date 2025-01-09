import 'package:flutter/material.dart';
import 'package:template_project/screens/signup_screen.dart';
import 'screens/welcome_screen.dart'; 
import 'screens/signin_screen.dart'; 
import 'screens/signup_screen.dart'; 
import 'screens/home_screen.dart';
import 'screens/message_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Sederhana',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', 
      routes: {
        '/': (context) => WelcomeScreen(), 
        '/signIn': (context) => SignInScreen(), 
        '/signUp': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(userName: 'User '),
        '/message': (context) => MessageScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}