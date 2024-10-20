import 'package:chat_app1/core/constants/app_assets.dart';
import 'package:chat_app1/core/shared_widgets/custom_button.dart';
import 'package:chat_app1/core/theme/app_styles.dart';
import 'package:chat_app1/features/auth/presentation/views/login.dart';
import 'package:chat_app1/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chat_app1/features/auth/presentation/views/widgets/have_an_account.dart';
import 'package:chat_app1/features/auth/presentation/views/widgets/name_field.dart';
import 'package:chat_app1/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chat_app1/features/auth/presentation/views/widgets/phone_field.dart';
import 'package:chat_app1/features/home/presentation/views/home.dart';
import 'package:flutter/material.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
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
                Center(
                  child: Text(
                    "Register To New Account",
                    style:
                        AppStyles.size32Weight700black.copyWith(fontSize: 24),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                NameField(nameController: nameController),
                const SizedBox(
                  height: 20,
                ),
                EmailField(
                  emailController: emailController,
                ),
                const SizedBox(
                  height: 20,
                ),
                PhoneField(phoneController: phoneController),
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
                  title: "Sign up",
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
                HaveAnAccount(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
