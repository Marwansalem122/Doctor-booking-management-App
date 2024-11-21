import 'package:appointment_booking_app/common/resourses/font_size_manager.dart';
import 'package:appointment_booking_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/resourses/height_size_manager.dart';
import '../../common/resourses/width_size_manager.dart';
import '../theming/app_colors.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final double? borderRadius;
  final double? buttonHeight;
  final double? buttonWidth;
  const AppTextButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.borderRadius, this.buttonHeight, this.buttonWidth});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: AppColors.mainBlue,
            fixedSize:  Size(buttonWidth??double.maxFinite,buttonHeight?? HeightSizeManager.h52),
          padding: EdgeInsets.symmetric(
              horizontal: WidthSizeManager.w12,
              vertical: HeightSizeManager.h14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16),
          ),
        ),
        child: Text(text,style: TextStyleManager.font16WhiteSemiBoldWeight));
  }
}
