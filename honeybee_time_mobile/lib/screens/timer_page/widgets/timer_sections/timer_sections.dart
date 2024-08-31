import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';
import 'package:honeybee_time_mobile/global/helpers/custom_edgeInsets/custom_edgeInsets.dart';
import 'package:honeybee_time_mobile/global/providers/color_provider/color_provider.dart';
import 'package:honeybee_time_mobile/global/providers/timer_provider/timer_provider.dart';
import 'package:provider/provider.dart';

class TimerSection extends StatefulWidget {
  const TimerSection({super.key});

  @override
  State<TimerSection> createState() => _TimerSectionState();
}

class _TimerSectionState extends State<TimerSection> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: customEdgeInsets(context, 0, 0, 0, 10),
      width: double.infinity,
      height: 300 * SizeConfig.ffem,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0 * SizeConfig.fem,
            child: Align(
              child: SizedBox(
                width: 260 * SizeConfig.fem,
                height: 260 * SizeConfig.fem,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(140 * SizeConfig.fem),
                    border: Border.all(
                        color: kMain_alpha_500,
                        width: 5 * SizeConfig.ffem),
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30 * SizeConfig.ffem,
                        ),
                        Consumer<ColorProvider>(
                          builder: (context, colorProvider, child) {
                            final textStyle = TextStyle(
                              fontSize: 30 * SizeConfig.ffem,
                              fontWeight: FontWeight.w900,
                              color: colorProvider.primary,
                            );

                            return Consumer<TimerProvider>(
                              builder: (context, timerProvider, child) {
                                return Text(
                                  '${timerProvider.digitalHours}:${timerProvider.digitalMinutes}:${timerProvider.digitalSeconds}',
                                  style: textStyle,
                                );
                              },
                            );
                          },
                        ),
                        SizedBox(
                          height: 30 * SizeConfig.ffem,
                        ),
                        Consumer<ColorProvider>(
                          builder: (context, colorProvider, child) {
                            return Text(
                              'Project name',
                              style: TextStyle(
                                fontSize: kPrimaryFontSize * SizeConfig.ffem,
                                fontWeight: FontWeight.w700,
                                color: colorProvider.secondary,
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: 5 * SizeConfig.ffem,
                        ),
                        Consumer<ColorProvider>(
                          builder: (context, colorProvider, child) {
                            return Text(
                              'Task name',
                              style: TextStyle(
                                fontSize: kSmallestFontSize * SizeConfig.ffem,
                                fontWeight: FontWeight.w400,
                                color: colorProvider.primary,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 205 * SizeConfig.fem,
            child: Align(child: Consumer<ColorProvider>(
                builder: (context, colorProvider, child) {
              return Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: colorProvider
                          .backgroundFill, // Set the color of the stroke
                      width: 10 // Set the width of the stroke
                      ),
                ),
                child: ClipOval(
                  child: Material(
                    color: colorProvider.secondary, // Button color
                    child: Consumer<TimerProvider>(
                      builder: (context, timerProvider, child) {
                        return InkWell(
                          onTap: () {
                            timerProvider.toggleStartStop();
                            colorProvider.updateColors();
                          },
                          child: SizedBox(
                            width: 70 * SizeConfig.ffem,
                            height: 70 * SizeConfig.ffem,
                            child: Icon(
                              colorProvider.timerPlayStopIcon,
                              color: colorProvider.backgroundFill,
                              size: 40 * SizeConfig.ffem,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            })),
          ),
        ],
      ),
    );
  }
}
