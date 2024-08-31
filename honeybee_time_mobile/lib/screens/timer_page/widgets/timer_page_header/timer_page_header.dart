import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';
import 'package:honeybee_time_mobile/global/helpers/custom_edgeInsets/custom_edgeInsets.dart';
import 'package:honeybee_time_mobile/global/providers/color_provider/color_provider.dart';
import 'package:provider/provider.dart';

class TimerPageHeader extends StatelessWidget {
  const TimerPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Center(
      child: Consumer<ColorProvider>(builder: (context, colorProvider, child) {
        return Container(
          margin: customEdgeInsets(context, 0, 0, 0, 50),
          child: Text(
            'Timer',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: kPrimaryFontSize * SizeConfig.ffem,
              fontWeight: FontWeight.w700,
              height: 1.2000000817 * SizeConfig.ffem / SizeConfig.fem,
              color: colorProvider.primary,
            ),
          ),
        );
      }),
    );
  }
}
