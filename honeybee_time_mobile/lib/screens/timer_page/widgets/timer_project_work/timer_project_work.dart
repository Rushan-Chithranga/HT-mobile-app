import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/factories/factory_button/button_factory.dart';
import 'package:honeybee_time_mobile/global/helpers/custom_edgeInsets/custom_edgeInsets.dart';
import 'package:honeybee_time_mobile/global/providers/color_provider/color_provider.dart';
import 'package:honeybee_time_mobile/screens/project_work_orders/project_work_orders.dart';
import 'package:provider/provider.dart';

class TimerProjectWork extends StatefulWidget {
  const TimerProjectWork({super.key});

  @override
  State<TimerProjectWork> createState() => _TimerProjectWorkState();
}

class _TimerProjectWorkState extends State<TimerProjectWork> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ColorProvider>(builder: (context, colorProvider, child) {
      return Container(
          margin: customEdgeInsets(context, 0, 40, 0, 0),
          child: ButtonFactory.createButton(ButtonType.elevated,
              text: "Projects / work orders",
              textColor: colorProvider.secondary,
              enableBorder: true,
              buttonBorderColor: colorProvider.secondary,
              params: {"width": 208.0, "height": 37.0, "borderRadius": 30.0},
              onPressed: () {
            Navigator.of(context).pushNamed(ProjectWorkOrders.routeName);
          }));
    });
  }
}
