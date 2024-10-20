import 'package:chat_app1/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class CustomProfileImage extends StatelessWidget {
  final double? radius;
  final Color? color;
  final Widget? icon;
  final Widget? widget;
  final double? height;
  final double? width;
  const CustomProfileImage(
      {super.key, this.radius, this.color, this.icon, this.widget, this.height, this.width});

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
        widget ??
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: height?? 20,
                width: width?? 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.green, width: 2),
                    color: color ?? Colors.white),
                child: Center(
                  child: icon ??
                      const Icon(
                        Icons.add,
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
