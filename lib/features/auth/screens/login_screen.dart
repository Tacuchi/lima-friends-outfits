import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Email and password login form
            _EmailAndPasswordLoginForm(),

            // Social media login buttons
            SizedBox(height: 20),
            _SocialMediaLoginButtons(),
          ],
        ),
      ),
    );
  }
}

class _EmailAndPasswordLoginForm extends StatelessWidget {
  const _EmailAndPasswordLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Email field
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Email',
          ),
        ),

        // Password field
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
          ),
        ),

        // Login button
        ElevatedButton(
          onPressed: () {},
          child: const Text('Login'),
        ),
      ],
    );
  }
}

class _SocialMediaLoginButtons extends StatelessWidget {
  const _SocialMediaLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.facebook),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.facebook),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.facebook),
        ),
      ],
    );
  }
}
