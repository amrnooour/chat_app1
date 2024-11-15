import 'package:chat_app1/features/profile/presentation/views/widgets/custom_profile_image.dart';
import 'package:chat_app1/features/profile/presentation/views/widgets/custom_update_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 40.w),
          child: Center(
            child: CustomProfileImage(radius: 70,icon:const Icon(Icons.edit,color: Colors.white,),
            color: Colors.green,height: 40.h,width: 40.w,),
          ),
        ),
        const Divider(),
        const CustomUpdateProfile()
      ],
    );
  }
}