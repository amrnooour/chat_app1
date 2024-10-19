import 'package:chat_app1/features/auth/presentation/views/widgets/login_body.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: LoginBody(),
    );
  }
}