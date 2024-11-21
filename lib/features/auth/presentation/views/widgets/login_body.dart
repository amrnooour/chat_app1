import 'package:chat_app1/core/constants/app_assets.dart';
import 'package:chat_app1/core/router/navigation.dart';
import 'package:chat_app1/core/router/routes_names.dart';
import 'package:chat_app1/core/shared_widgets/custom_button.dart';
import 'package:chat_app1/core/theme/app_styles.dart';
import 'package:chat_app1/features/auth/presentation/view_model/auth_cubit.dart';
import 'package:chat_app1/features/auth/presentation/view_model/auth_states.dart';
import 'package:chat_app1/features/auth/presentation/views/widgets/donot_have_account.dart';
import 'package:chat_app1/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chat_app1/features/auth/presentation/views/widgets/password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit cubit = context.read();
    var key = GlobalKey<FormState>();

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 60.h),
          child: Form(
            key: key,
            child: BlocConsumer<AuthCubit, AuthStates>(
              listener: (context, state) {
                if (state is SuccessAuthStates) {
                  customReplacementNavigate(context, RoutesNames.home);
                  const Text("Success");
                } else if (state is FailureAuthStates) {
                  var snackbar = SnackBar(                    
                    content: Text(state.errorMessage),
                    behavior: SnackBarBehavior.floating,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                }
              },
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      AppAssets.logo,
                      width: 250.w,
                      height: 200.h,
                    ),
                    Text(
                      "Log in to your account",
                      style: AppStyles.size32Weight700black,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    EmailField(
                      emailController: cubit.email,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    PasswordField(
                      passwordController: cubit.password,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    state is LoadingAuthStates
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : CustomButton(
                            title: "Log In",
                            onTap: () {
                              if (key.currentState!.validate()) {
                                cubit.signin();
                              } else {}
                            },
                          ),
                    SizedBox(
                      height: 30.h,
                    ),
                    DonotHaveAccount(
                      onTap: () {
                        customNavigation(context, RoutesNames.signup);
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
