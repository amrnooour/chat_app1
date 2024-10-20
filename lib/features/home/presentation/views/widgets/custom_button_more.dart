import 'package:chat_app1/features/home/presentation/views/profile.dart';
import 'package:flutter/material.dart';

class CustomButtonMore extends StatelessWidget {
  const CustomButtonMore({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        if (value == "profile") {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Profile(),
              ));
        }
      },
      itemBuilder: (BuildContext context) {
        return [
          const PopupMenuItem<String>(
            value: 'New Group',
            child: Text('New Group'),
          ),
          const PopupMenuItem<String>(
            value: 'profile',
            child: Text('profile'),
          ),
          const PopupMenuItem<String>(
            value: 'log out',
            child: Text('log out'),
          ),
        ];
      },
    );
  }
}
