import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';
import 'package:honeybee_time_mobile/global/helpers/custom_edgeInsets/custom_edgeInsets.dart';

class PageHeaderDesign extends StatelessWidget {
  const PageHeaderDesign({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      // frame1xtj (126:7909)
      margin: customEdgeInsets(context, 32, 0, 32, 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // emblemofhoneybeetimelogoWQT (126:7910)
            margin: customEdgeInsets(context, 0, 0, 0, 20),
            width: 59 * SizeConfig.fem,
            height: 59 * SizeConfig.fem,
            child: Image.asset(
              'assets/images/logo.png',
              width: 59 * SizeConfig.fem,
              height: 59 * SizeConfig.ffem,
            ),
          ),
          SizedBox(
            // frame2Tj1 (126:7935)
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  // letsgetstartedp3m (126:7936)
                  'Let’s get started',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: kPrimaryFontSize * SizeConfig.ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2000000817 * SizeConfig.ffem / SizeConfig.fem,
                    color: kBeta_700,
                  ),
                ),
                SizedBox(
                  height: 8 * SizeConfig.fem,
                ),
                Text(
                  'which organization will you be working with?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: kSmallestFontSize * SizeConfig.ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.2125 * SizeConfig.ffem / SizeConfig.fem,
                    color: kBeta_600,
                  ),
                ),
                SizedBox(
                  height: 8 * SizeConfig.fem,
                ),
                Container(
                  constraints: BoxConstraints(
                    maxWidth: 214 * SizeConfig.fem,
                  ),
                  child: Text(
                    'You’ll be able to easily switch between these\norganizations from the More screen',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10 * SizeConfig.ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2 * SizeConfig.ffem / SizeConfig.fem,
                      color: kBeta_300,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
