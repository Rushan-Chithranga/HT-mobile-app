// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';
import 'package:honeybee_time_mobile/screens/project_work_orders/widgets/project_task_list/sub_task/sub_task.dart';

class CustomExpansion extends StatefulWidget {
  final Function(int) onTap;
  bool isExpanded;
  final int index;
  final Color? color;

  CustomExpansion({
    super.key,
    required this.index,
    required this.onTap,
    required this.isExpanded,
    this.color = kMain_alpha_500,
  });

  @override
  _CustomExpansionState createState() => _CustomExpansionState();
}

class _CustomExpansionState extends State<CustomExpansion> {
  int selectedContainerIndex = -1;

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
    return Container(
      padding: EdgeInsets.only(
        bottom: 15 * SizeConfig.ffem,
      ),
      margin: EdgeInsets.only(
        bottom: 20 * SizeConfig.ffem,
      ),
      decoration: BoxDecoration(
        border: widget.index == 1
            ? null
            : const Border(
                bottom: BorderSide(
                  width: 0.5,
                  color: kBeta_100,
                ),
              ),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => widget.onTap(widget.index),
            child: Container(
              margin: EdgeInsets.only(
                left: 10 * SizeConfig.fem,
                right: 10 * SizeConfig.fem,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: widget.isExpanded ? kAlpha_100 : null,
                borderRadius: BorderRadius.circular(
                  20 * SizeConfig.fem,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    child: widget.isExpanded
                        ? Container(
                            width: 31.5 * SizeConfig.ffem,
                            height: 31.5 * SizeConfig.ffem,
                            decoration: BoxDecoration(
                              color: kMain_alpha_500,
                              borderRadius: BorderRadius.circular(
                                20 * SizeConfig.fem,
                              ),
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/project_work_play_icon.svg',
                              width: 31.5 * SizeConfig.ffem,
                              height: 31.5 * SizeConfig.ffem,
                            ),
                          )
                        : Container(
                            width: 31.5 * SizeConfig.ffem,
                            height: 31.5 * SizeConfig.ffem,
                            decoration: BoxDecoration(
                              color: widget.color,
                              borderRadius: BorderRadius.circular(
                                20 * SizeConfig.fem,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'O',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: kPrimaryFontSize * SizeConfig.ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2000000817 *
                                      SizeConfig.ffem /
                                      SizeConfig.fem,
                                  color: kMain_epsilon_500,
                                ),
                              ),
                            ),
                          ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 20 * SizeConfig.fem,
                    ),
                    child: Text(
                      'Open City',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14 * SizeConfig.ffem,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (widget.isExpanded)
            Container(
              margin: EdgeInsets.only(
                left: 10 * SizeConfig.fem,
                right: 10 * SizeConfig.fem,
                top: 15 * SizeConfig.fem,
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubTask(
                    index: 0,
                    onTap: toggleSelection,
                    isSelected: selectedContainerIndex == 0,
                  ),
                  SubTask(
                    index: 1,
                    onTap: toggleSelection,
                    isSelected: selectedContainerIndex == 1,
                  ),
                  SubTask(
                    index: 2,
                    onTap: toggleSelection,
                    isSelected: selectedContainerIndex == 2,
                  ),
                  SubTask(
                    index: 3,
                    onTap: toggleSelection,
                    isSelected: selectedContainerIndex == 3,
                  ),
                  SubTask(
                    index: 4,
                    onTap: toggleSelection,
                    isSelected: selectedContainerIndex == 4,
                  ),
                  SubTask(
                    index: 5,
                    onTap: toggleSelection,
                    isSelected: selectedContainerIndex == 5,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
