import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';

class VersionText extends StatefulWidget {
  const VersionText({super.key});

  @override
  State<VersionText> createState() => _VersionTextState();
}

class _VersionTextState extends State<VersionText> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Text(
      'v3.3.4, build 63318 (Android, API 27)',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: kSmallestFontSize * SizeConfig.ffem,
        fontWeight: FontWeight.w500,
        height: 1.2000000817 * SizeConfig.ffem / SizeConfig.fem,
        color: kEpsilon_800,
      ),
    );
  }
}
