import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _init();
  }

  _init() async {
    await Future.delayed(const Duration(seconds: 2), () {
      context.go('/offers');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //backgroundColor: Colors.white,
      body: Center(
        child: Text('Splash Screen'),
      ),
    );
  }
}
