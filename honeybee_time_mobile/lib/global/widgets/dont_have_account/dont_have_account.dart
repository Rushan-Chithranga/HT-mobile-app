import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: kEpsilon_700,
            thickness: SizeConfig.fem * 0.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Don’t have an account?',
            style: TextStyle(
              fontSize: SizeConfig.ffem * kSmallestFontSize,
              fontWeight: FontWeight.w500,
              color: kEpsilon_800,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: kEpsilon_700,
            thickness: SizeConfig.fem * 0.5,
          ),
        ),
      ],
    );
  }
}
