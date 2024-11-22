import 'package:chat_app1/features/home/presentation/view_model/home_cubit.dart';
import 'package:chat_app1/features/home/presentation/view_model/home_states.dart';
import 'package:chat_app1/features/home/presentation/views/widgets/custom_row_chats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        HomeCubit cubit = context.read();
        return state is GetDataSuccess
            ? SizedBox(
                height: 500.h,
                child: ListView.builder(
                  itemCount: cubit.chat!.length,
                  itemBuilder: (context, index) {
                    return CustomRowChats(
                        title1: cubit.chat![index].name!,
                        title2: cubit.chat![index].phone!);
                  },
                ),
              )
            : const Center(child: CircularProgressIndicator());
      },
    );
  }
}
