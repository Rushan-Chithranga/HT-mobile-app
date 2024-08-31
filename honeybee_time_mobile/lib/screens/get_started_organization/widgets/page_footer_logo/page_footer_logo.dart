import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';

class PageFooterLogo extends StatelessWidget {
  const PageFooterLogo({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      width: 152 * SizeConfig.fem,
      height: 19.92 * SizeConfig.fem,
      child: Image.asset(
        'assets/images/honeybee_logo_group.png',
        width: 152 * SizeConfig.fem,
        height: 19.92 * SizeConfig.fem,
      ),
    );
  }
}
