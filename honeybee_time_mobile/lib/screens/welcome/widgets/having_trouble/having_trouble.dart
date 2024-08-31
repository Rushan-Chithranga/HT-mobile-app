import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';

class HavingTrouble extends StatefulWidget {
  const HavingTrouble({super.key});

  @override
  State<HavingTrouble> createState() => _HavingTroubleState();
}

class _HavingTroubleState extends State<HavingTrouble> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Text(
      'Having trouble signing in?',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: kPrimaryFontSize * SizeConfig.ffem,
        fontWeight: FontWeight.w600,
        height: 1.2000000817 * SizeConfig.ffem / SizeConfig.fem,
        letterSpacing: 0.42 * SizeConfig.fem,
        color: kMain_alpha_500,
      ),
    );
  }
}
