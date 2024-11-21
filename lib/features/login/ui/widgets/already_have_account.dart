import 'package:flutter/material.dart';

import '../../../../common/resourses/strings_manager.dart';
import '../../../../core/theming/styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: StringsManager.alreadyHaveAccount,
              style:TextStyleManager.font11BlackRegular,
            ),
            TextSpan(
              text: StringsManager.signUp,
              style:  TextStyleManager.font11BlueRegular,
            ),
          ]
        ));
  }
}
