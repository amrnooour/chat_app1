import 'package:chat_app1/core/theme/app_colors.dart';
import 'package:chat_app1/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButtonProfile extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const CustomButtonProfile({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: 70,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: AppColors.secondryColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.save,
                color: Colors.white,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                title,
                style: AppStyles.size32Weight700black
                    .copyWith(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
