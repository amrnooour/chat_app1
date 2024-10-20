import 'package:chat_app1/features/home/presentation/views/widgets/status_body.dart';
import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: StatusBody(),
    );
  }
}