import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';
import 'package:honeybee_time_mobile/global/layouts/projects_work_orders_layout/projects_work_orders_layout.dart';
import 'package:honeybee_time_mobile/global/widgets/search_box/search_box.dart';
import 'package:honeybee_time_mobile/screens/project_work_orders/widgets/project_task_list/project_task_list.dart';

class ProjectWorkOrders extends StatefulWidget {
  static const routeName = '/project_work_orders';
  const ProjectWorkOrders({Key? key}) : super(key: key);

  @override
  State<ProjectWorkOrders> createState() => _ProjectWorkOrdersState();
}

class _ProjectWorkOrdersState extends State<ProjectWorkOrders> {
  int selectedContainerIndex = 0;

  void toggleSelection(int index) {
    setState(() {
      if (selectedContainerIndex == index) {
        selectedContainerIndex = -1;
      } else {
        selectedContainerIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ProjectsWorkOrdersLayout(
      padding: EdgeInsets.only(
        left: 10 * SizeConfig.fem,
        right: 10 * SizeConfig.fem,
      ),
      fab: SpeedDial(
        animatedIcon: AnimatedIcons.add_event,
        backgroundColor: kMain_alpha_500,
        overlayOpacity: 0.9,
        animationDuration: const Duration(
          milliseconds: 300,
        ),
        icon: Icons.add,
        childrenButtonSize: Size(
          46 * SizeConfig.fem,
          46 * SizeConfig.fem,
        ),
        curve: Curves.fastEaseInToSlowEaseOut,
        useRotationAnimation: false,
        children: [
          SpeedDialChild(
            child: SvgPicture.asset(
              'assets/icons/create_task.svg',
              width: 13 * SizeConfig.fem,
              height: 13 * SizeConfig.ffem,
            ),
            label: "Create a task",
            labelStyle: TextStyle(
              fontSize: kSmallestFontSize * SizeConfig.fem,
              fontWeight: FontWeight.w600,
            ),
            backgroundColor: const Color(0xFF1BD89A),
          ),
          SpeedDialChild(
            child: SvgPicture.asset(
              'assets/icons/create_project.svg',
              width: 13 * SizeConfig.fem,
              height: 12 * SizeConfig.ffem,
            ),
            label: "Create a project",
            labelStyle: TextStyle(
              fontSize: kSmallestFontSize * SizeConfig.fem,
              fontWeight: FontWeight.w600,
            ),
            backgroundColor: const Color(0xFFCF25BF),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 25 * SizeConfig.ffem,
            ),
            child: Text(
              "Projects/Work orders",
              style: TextStyle(
                fontSize: 16 * SizeConfig.ffem,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 30 * SizeConfig.ffem,
            ),
            width: 320 * SizeConfig.fem,
            child: const SearchBox(),
          ),
          CustomExpansion(
            index: 0,
            onTap: toggleSelection,
            isExpanded: selectedContainerIndex == 0,
          ),
          CustomExpansion(
            index: 1,
            onTap: toggleSelection,
            isExpanded: selectedContainerIndex == 1,
            color: const Color(0xff1BB6D8),
          ),
        ],
      ),
    );
  }
}
