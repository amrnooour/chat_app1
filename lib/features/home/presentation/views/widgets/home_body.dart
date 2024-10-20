import 'package:chat_app1/features/home/presentation/views/widgets/custom_row_chats.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomRowChats(
          title1: "rowan",
          title2: "#0 1011873749",
        ),
        CustomRowChats(
          title1: "amr",
          title2: "# 01007098280",
        ),
        CustomRowChats(
          title1: "nour",
          title2: "# 01145421000",
        ),
      ],
    );
  }
}
