// Import necessary packages
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Define the RegisterScreen class
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/phone_otp');
              },
              child: const Text('Register with Phone Number'),
            ),
            ElevatedButton(
              onPressed: () {
              },
              child: const Text('Sign in with Google'),
            ),
            ElevatedButton(
              onPressed: () {
              },
              child: const Text('Sign in with Facebook'),
            ),
          ],
        ),
      ),
    );
  }
}
