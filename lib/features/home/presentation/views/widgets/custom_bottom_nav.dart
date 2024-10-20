import 'package:chat_app1/features/home/presentation/view_model/home_cubit.dart';
import 'package:chat_app1/features/home/presentation/view_model/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    HomeCubit cubit = context.read();
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        return BottomNavigationBar(
          selectedItemColor: Colors.green,
          showUnselectedLabels: true,
            currentIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.changeBottomNav(index);
            },
            items: [
              BottomNavigationBarItem(
                  icon: cubit.currentIndex == 0
                      ? const Icon(
                          Icons.chat,
                          color: Colors.green,
                          size: 32,
                        )
                      : const Icon(Icons.chat),
                  label: "chats"),
              BottomNavigationBarItem(
                  icon: cubit.currentIndex == 1
                      ? const Icon(
                          Icons.lightbulb,
                          color: Colors.green,
                          size: 32,
                        )
                      : const Icon(Icons.lightbulb),
                  label: "status"),
              BottomNavigationBarItem(
                  icon: cubit.currentIndex == 2
                      ? const Icon(
                          Icons.call,
                          color: Colors.green,
                          size: 32,
                        )
                      : const Icon(Icons.call),
                  label: "call"),
            ]);
      },
    );
  }
}
