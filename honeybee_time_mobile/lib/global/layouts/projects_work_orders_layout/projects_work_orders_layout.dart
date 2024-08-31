// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';

class ProjectsWorkOrdersLayout extends StatefulWidget {
  Widget child;
  Widget? fab;
  EdgeInsets padding;
  ProjectsWorkOrdersLayout({
    super.key,
    required this.child,
    this.fab,
    this.padding = const EdgeInsets.all(0),
  });

  @override
  State<ProjectsWorkOrdersLayout> createState() =>
      _ProjectsWorkOrdersLayoutState();
}

class _ProjectsWorkOrdersLayoutState extends State<ProjectsWorkOrdersLayout> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kDelta_50,
        floatingActionButton: widget.fab,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                padding: widget.padding,
                width: 360 * SizeConfig.fem,
                height: 610 * SizeConfig.ffem,
                decoration: BoxDecoration(
                  color: kMain_epsilon_500,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15 * SizeConfig.fem),
                    topRight: Radius.circular(15 * SizeConfig.fem),
                  ),
                ),
                child: widget.child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
