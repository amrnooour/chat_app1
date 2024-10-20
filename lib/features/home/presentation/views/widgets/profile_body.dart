import 'package:chat_app1/features/home/presentation/views/widgets/custom_button_profile.dart';
import 'package:chat_app1/features/home/presentation/views/widgets/custom_profile_image.dart';
import 'package:chat_app1/features/home/presentation/views/widgets/custom_update_profile.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Center(
            child: CustomProfileImage(radius: 70,icon:Icon(Icons.edit,color: Colors.white,),
            color: Colors.green,height: 40,width: 40,),
          ),
        ),
        Divider(),
        CustomUpdateProfile()
      ],
    );
  }
}