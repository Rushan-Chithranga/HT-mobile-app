import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/factories/factory_button/button_factory.dart';
import 'package:honeybee_time_mobile/global/helpers/custom_edgeInsets/custom_edgeInsets.dart';
import 'package:honeybee_time_mobile/global/layouts/projects_work_orders_layout/projects_work_orders_layout.dart';
import 'package:honeybee_time_mobile/screens/project_work_orders/widgets/task_page/details/details.dart';
import 'package:honeybee_time_mobile/screens/project_work_orders/widgets/task_page/task_header/task_header.dart';

class TaskPage extends StatefulWidget {
  static const routeName = "/task_page";
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ProjectsWorkOrdersLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const TaskHeader(),
              Container(
                margin: EdgeInsets.only(
                  left: 25 * SizeConfig.fem,
                  right: 25 * SizeConfig.fem,
                  top: 30 * SizeConfig.fem,
                ),
                child: const Column(
                  children: [
                    Details(),
                    Details(),
                    Details(),
                    Details(),
                    Details(),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: customEdgeInsets(context, 25, 0, 25, 35),
            width: double.infinity,
            child: ButtonFactory.createButton(
              ButtonType.elevated,
              text: "Complate",
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
