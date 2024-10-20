import 'package:chat_app1/core/theme/app_styles.dart';
import 'package:chat_app1/features/home/presentation/views/widgets/custom_button_more.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Widget? icon;
  final String title;
  final void Function()? onPressed;
  const CustomAppBar({super.key, required this.title,this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon??const Text(""),
        const SizedBox(width: 44,),
        Text(
          title,
          style: AppStyles.size32Weight700black.copyWith(fontWeight: FontWeight.w400
          ),
        ),
        const Spacer(),
        const Icon(Icons.search,),
        const SizedBox(width: 8,),
        const CustomButtonMore(),
      ],
    );
    
  }
}
