import 'package:flutter/material.dart';
import 'package:t_buy/view/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // method to sign in user with email and password
  // get user from database then update app global state before we push replace
  Future<void> _loginButton({
    required String email,
    required String password,
  }) async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (ctx) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Placeholder());
  }
}
