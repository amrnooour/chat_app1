import 'package:chat_app1/core/constants/app_assets.dart';
import 'package:chat_app1/core/shared_widgets/custom_button.dart';
import 'package:chat_app1/core/theme/app_styles.dart';
import 'package:chat_app1/features/auth/presentation/views/signup.dart';
import 'package:chat_app1/features/auth/presentation/views/widgets/donot_have_account.dart';
import 'package:chat_app1/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chat_app1/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chat_app1/features/home/presentation/views/home.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    var key = GlobalKey<FormState>();

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
          child: Form(
            key: key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  AppAssets.logo,
                  width: 250,
                  height: 200,
                ),
                const Text(
                  "Log in to your account",
                  style: AppStyles.size32Weight700black,
                ),
                const SizedBox(
                  height: 30,
                ),
                EmailField(
                  emailController: emailController,
                ),
                const SizedBox(
                  height: 20,
                ),
                PasswordField(
                  passwordController: passwordController,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  title: "Log In",
                  onTap: () {
                    if (key.currentState!.validate()) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ));
                    } else {}
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                DonotHaveAccount(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Signup(),
                        ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
