import 'package:chat_app1/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonotHaveAccount extends StatelessWidget {
  final void Function()? onTap;
  const DonotHaveAccount({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      const Text("Don’t have an account?  "),
      GestureDetector(
        onTap: onTap,
        child: Text("Register here",style: AppStyles.size24Weight600green.copyWith(fontSize: 12.sp),)),
    ],);
  }
}