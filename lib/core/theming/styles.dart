import 'package:appointment_booking_app/common/resourses/font_size_manager.dart';
import 'package:appointment_booking_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class TextStyleManager {
  static  TextStyle font24Black700Weight = TextStyle(
          fontSize: FontSizeManager.s24,
          color: Colors.black,
          fontWeight: FontWeight.w700);
  static TextStyle font32BlueBold = TextStyle(
    fontSize: FontSizeManager.s32,
    color: AppColors.mainBlue,
    fontWeight: FontWeight.bold
  );
  static TextStyle font13GrayRegular = TextStyle(
    fontSize: FontSizeManager.s13,
    color: AppColors.gray,
    fontWeight: FontWeight.normal
  ); // 16x
static TextStyle font16White600Weight=TextStyle(
    fontSize: FontSizeManager.s16,
    color: AppColors.white,
    fontWeight: FontWeight.w600);

}

