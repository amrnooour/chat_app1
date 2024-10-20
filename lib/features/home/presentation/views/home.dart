import 'package:chat_app1/core/constants/tabs_of_bottom_nav.dart';
import 'package:chat_app1/core/shared_widgets/custom_app_bar.dart';
import 'package:chat_app1/features/home/presentation/view_model/home_cubit.dart';
import 'package:chat_app1/features/home/presentation/view_model/home_states.dart';
import 'package:chat_app1/features/home/presentation/views/widgets/custom_bottom_nav.dart';
import 'package:chat_app1/features/home/presentation/views/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit,HomeStates>(
        builder: (context, state) => Scaffold(
          body: TabsOfBottomNav.tabs[context.read<HomeCubit>().currentIndex],
          bottomNavigationBar: const CustomBottomNav(),
          appBar: AppBar(
            title: const CustomAppBar(title: "WhatsUp"),
          ),
          floatingActionButton: const CustomFloatingButton(),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        ),
      ),
    );
  }
}