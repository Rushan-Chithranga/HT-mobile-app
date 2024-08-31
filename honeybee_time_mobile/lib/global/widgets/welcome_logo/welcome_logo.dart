import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';
import 'package:honeybee_time_mobile/global/helpers/custom_edgeInsets/custom_edgeInsets.dart';

class WelcomeLogo extends StatelessWidget {
  const WelcomeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: customEdgeInsets(context, 115, 0, 115, 23),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: customEdgeInsets(context, 0, 0, 0, 20),
            width: 59 * SizeConfig.fem,
            height: 59 * SizeConfig.fem,
            child: SvgPicture.asset(
              'assets/images/logo.svg',
              width: 59 * SizeConfig.fem,
              height: 59 * SizeConfig.fem,
            ),
          ),
          Text(
            'Welcome',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: kTopicFontSize * SizeConfig.ffem,
              fontWeight: FontWeight.w600,
              height: 1.2 * SizeConfig.ffem / SizeConfig.fem,
              color: kMain_beta_500,
            ),
          ),
        ],
      ),
    );
  }
}
