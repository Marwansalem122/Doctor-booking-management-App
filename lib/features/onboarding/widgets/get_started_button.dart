import 'package:appointment_booking_app/features/onboarding/logic/onboarding_controller.dart';
import 'package:flutter/material.dart';

import '../../../common/resourses/strings_manager.dart';
import '../../../common/resourses/width_size_manager.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: WidthSizeManager.w50),
      child: TextButton(
          onPressed: () {
            OnBoardingController.goToLoginScreen(context);
          },

          style: TextButton.styleFrom(
            backgroundColor: AppColors.mainBlue,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            )
          ),
          child: Text(StringsManager.getStarted,
              style: TextStyleManager.font16White600Weight)),
    );
  }
}
