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
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 60.h),
          child: Form(
            key: key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  AppAssets.logo,
                  width: 250.w,
                  height: 200.h,
                ),
                Center(
                  child: Text(
                    "Register To New Account",
                    style:
                        AppStyles.size32Weight700black.copyWith(fontSize: 24.sp),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                NameField(nameController: nameController),
                SizedBox(
                  height: 20.h,
                ),
                EmailField(
                  emailController: emailController,
                ),
                SizedBox(
                  height: 20.h,
                ),
                PhoneField(phoneController: phoneController),
                SizedBox(
                  height: 20.h,
                ),
                PasswordField(
                  passwordController: passwordController,
                ),
                SizedBox(
                  height: 30.h,
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
                SizedBox(
                  height: 30.h,
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
