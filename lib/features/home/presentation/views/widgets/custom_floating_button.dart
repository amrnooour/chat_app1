import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
      color: Colors.green),
      child: const Center(child: Icon(Icons.chat,size: 24,color: Colors.white,),),
    );
  }
}