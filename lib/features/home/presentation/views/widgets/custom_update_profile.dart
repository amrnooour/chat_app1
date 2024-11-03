import 'package:chat_app1/core/theme/app_styles.dart';
import 'package:chat_app1/features/home/presentation/views/widgets/custom_button_profile.dart';
import 'package:chat_app1/features/home/presentation/views/widgets/custom_text_field_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomUpdateProfile extends StatelessWidget {
  const CustomUpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Name",style: AppStyles.size18Weight400grey,),
           SizedBox(height: 15.h,),
          const CustomTextFieldProfile(hint: "  Amr Nour"),
           SizedBox(height: 15.h,),
          Text("phone",style: AppStyles.size18Weight400grey,),
          SizedBox(height: 15.h,),
          const CustomTextFieldProfile(hint: "  +01007098280"),
          SizedBox(height: 40.h,),
          const CustomButtonProfile(title: "Save Profile")

        ],
      ),
    );
  }
}