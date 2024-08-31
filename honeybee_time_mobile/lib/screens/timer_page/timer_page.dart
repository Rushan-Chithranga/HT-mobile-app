import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/helpers/custom_edgeInsets/custom_edgeInsets.dart';
import 'package:honeybee_time_mobile/global/layouts/bottom_navigate_screen_layout/bottom_navigate_screen_layout.dart';
import 'package:honeybee_time_mobile/global/providers/color_provider/color_provider.dart';
import 'package:honeybee_time_mobile/screens/timer_page/widgets/timer_project_work/timer_project_work.dart';
import 'package:honeybee_time_mobile/screens/timer_page/widgets/timer_page_header/timer_page_header.dart';
import 'package:honeybee_time_mobile/screens/timer_page/widgets/timer_sections/timer_sections.dart';
import 'package:honeybee_time_mobile/screens/timer_page/widgets/today_timer_section/today_timer_section.dart';
import 'package:provider/provider.dart';

class TimerPage extends StatefulWidget {
  static const routeName = '/timer';
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Consumer<ColorProvider>(builder: (context, colorProvider, child) {
      return BottomNavigateScreenLayout(
        backgroundColor: colorProvider.backgroundFill,
        padding: customEdgeInsets(context, 40, 40, 40, 55),
        widgetList: const [
          TimerPageHeader(),
          TimerSection(),
          TodayTimerSection(),
          TimerProjectWork()
        ],
      );
    });
  }
}
