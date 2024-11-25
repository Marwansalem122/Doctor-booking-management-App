import 'package:appointment_booking_app/common/resourses/strings_manager.dart';
import 'package:appointment_booking_app/core/helper/navigation_extension.dart';
import 'package:appointment_booking_app/core/routing/routes.dart';
import 'package:appointment_booking_app/core/theming/styles.dart';
import 'package:appointment_booking_app/features/login/logic/login_cubit.dart';
import 'package:appointment_booking_app/features/login/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/app_colors.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (BuildContext context, LoginState<dynamic> state) {
        state.whenOrNull(loading: () {
          showDialog(
              context: context,
              builder: (context) => const Center(
                      child: CircularProgressIndicator(
                    color: AppColors.mainBlue,
                  )));
        }, success: (loginResponse) {
          context.pop();
          context.pushNamedAndRemoveUntil(Routes.homeScreen);
        }, error: (error) {
         setupErrorState(context, error);
        });
      },
      child: const SizedBox.shrink(),
    );
  }
  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          icon: const Icon(Icons.error, color: Colors.red, size: 32),
          content: Text(error,
              style: TextStyleManager.font15DarkBlueMedium),
          actions: [
            TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text(StringsManager.goIt,
                    style: TextStyleManager.font14BlueSemiBold))
          ],
        )
    );
  }
}
