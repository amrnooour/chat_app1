import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomRowChats extends StatelessWidget {
  final String title1;
  final String title2;
  const CustomRowChats({super.key, required this.title1, required this.title2});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title1,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
          ),
          Text(title2,
              style:
                  TextStyle(fontSize: 18, color: Colors.grey.withOpacity(.9))),
        ],
      ),
      trailing: Column(
        children: [
          Text("${DateTime.now().hour.toString()}:00 pm"),
          const SizedBox(height: 8,),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.green),
            child: const Center(child: Text("2",style: TextStyle(color: Colors.white),)),
          )
        ],
      ),
      leading: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80), color: Colors.grey),
        child: const Center(
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
