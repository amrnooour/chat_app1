import 'package:chat_app1/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class CustomProfileImage extends StatelessWidget {
  final double? radius;
  final Color? color;
  final IconData? icon;
  final Widget? widget;
  const CustomProfileImage({super.key, this.radius, this.color, this.icon, this.widget});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: CircleAvatar(
            radius: radius ?? 30,
            child: Image.asset(AppAssets.amr),
          ),
        ),
        widget??Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.green, width: 2),
                color: color ?? Colors.white),
            child: Center(
              child: Icon(
                icon ?? Icons.add,
                color: Colors.green,
                size: 15,
              ),
            ),
          ),
        )
      ],
    );
  }
}
