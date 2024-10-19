import 'package:chat_app1/core/constants/app_assets.dart';
import 'package:chat_app1/core/theme/app_styles.dart';
import 'package:chat_app1/features/auth/presentation/views/login.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Login(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.logo,
              height: 250,
              width: 250,
            ),
            const Text(
              "Welcome to chat App",
              style: AppStyles.size24Weight600green,
            )
          ],
        ),
      ),
    );
  }
}
