import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/providers/color_provider/color_provider.dart';
import 'package:honeybee_time_mobile/global/providers/timer_provider/timer_provider.dart';
import 'package:provider/provider.dart';

class TodayTimerSection extends StatefulWidget {
  const TodayTimerSection({super.key});

  @override
  State<TodayTimerSection> createState() => _TodayTimerSectionState();
}

class _TodayTimerSectionState extends State<TodayTimerSection> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Consumer<ColorProvider>(builder: (context, colorProvider, child) {
      return Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
            // widthFactor: 1.0 * SizeConfig.fem,
            child: Consumer<TimerProvider>(
                builder: (context, timerProvider, child) {
          return Text(
            'Today :${timerProvider.digitalHours}:${timerProvider.digitalMinutes}:${timerProvider.digitalSeconds}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16 * SizeConfig.ffem,
              fontWeight: FontWeight.w700,
              color: colorProvider.primary,
            ),
          );
        })),
      );
    });
  }
}
