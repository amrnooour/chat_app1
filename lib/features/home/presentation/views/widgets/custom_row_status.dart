import 'package:chat_app1/core/theme/app_styles.dart';
import 'package:chat_app1/features/home/presentation/views/widgets/custom_profile_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRowStatus extends StatelessWidget {
  final String title1;
  final String title2;
  final Widget? icon;
  final Widget? widget;
  final double? vertical;
  const CustomRowStatus(
      {super.key,
      required this.title1,
      required this.title2,
      this.icon,
      this.widget, this.vertical});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: vertical?? 20.h),
      child: Row(
        children: [
          CustomProfileImage(
            widget: widget,
            icon: icon,
          ),
          SizedBox(
            width: 18.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title1,
                style: AppStyles.size24Weight500black
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                title2,
                style: AppStyles.size18Weight400grey,
              )
            ],
          )
        ],
      ),
    );
  }
}
