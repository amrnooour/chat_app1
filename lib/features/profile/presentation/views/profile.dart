import 'package:chat_app1/core/theme/app_styles.dart';
import 'package:chat_app1/features/profile/presentation/views/widgets/profile_body.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ProfileBody(),
      appBar: AppBar(
        title:Text("Profile",style: AppStyles.size24Weight500black,),
      ),
    );
  }
}
