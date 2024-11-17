import 'package:appointment_booking_app/core/helper/navigation_extension.dart';
import 'package:appointment_booking_app/core/routing/routes.dart';
import 'package:flutter/cupertino.dart';

class OnBoardingController {
  static void goToLoginScreen(BuildContext context) {
    context.pushNamed(Routes.loginScreen);
  }
}