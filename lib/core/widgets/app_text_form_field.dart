import 'package:appointment_booking_app/common/resourses/height_size_manager.dart';
import 'package:appointment_booking_app/common/resourses/width_size_manager.dart';
import 'package:appointment_booking_app/core/theming/app_colors.dart';
import 'package:appointment_booking_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final bool? isObsecureText;
  final Widget? suffixIcon;
  final String hintText;
  final Color? backgroundColor;

  const AppTextFormField(
      {super.key,
      required this.hintText,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.isObsecureText,
      this.suffixIcon,
      this.hintStyle, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(
                  horizontal: WidthSizeManager.w20,
                  vertical: HeightSizeManager.h18),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: AppColors.mainBlue, width: 1.3),
                  borderRadius: BorderRadius.circular(16)),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: AppColors.lighterGray, width: 1.3),
                  borderRadius: BorderRadius.circular(16)),
          suffixIcon: suffixIcon ?? null,
          hintText: hintText,
          filled: true,
          fillColor:backgroundColor?? AppColors.moreLightGray,
          hintStyle: hintStyle ?? TextStyleManager.font14LightGrayMedium),
      obscureText: isObsecureText ?? false,
      style: inputTextStyle ?? TextStyleManager.font14DarkBlueMedium,
    );
  }
}
