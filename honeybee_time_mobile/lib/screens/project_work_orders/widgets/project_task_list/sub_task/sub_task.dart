import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';
import 'package:honeybee_time_mobile/screens/project_work_orders/widgets/task_page/task_page.dart';

class SubTask extends StatefulWidget {
  final Function(int) onTap;
  final bool isSelected;
  final int index;
  const SubTask({
    super.key,
    required this.index,
    required this.onTap,
    required this.isSelected,
  });

  @override
  State<SubTask> createState() => _SubTaskState();
}

class _SubTaskState extends State<SubTask> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () => widget.onTap(widget.index),
      child: Container(
        margin: EdgeInsets.only(
          bottom: 15 * SizeConfig.fem,
        ),
        child: Row(
          children: [
            Container(
              width: 310 * SizeConfig.fem,
              decoration: BoxDecoration(
                color: widget.isSelected ? kAlpha_100 : Colors.white,
                borderRadius: BorderRadius.circular(
                  20 * SizeConfig.fem,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    child: widget.isSelected
                        ? Container(
                            width: 31.5 * SizeConfig.ffem,
                            height: 31.5 * SizeConfig.ffem,
                            decoration: BoxDecoration(
                              color: kMain_alpha_500,
                              borderRadius: BorderRadius.circular(
                                20 * SizeConfig.fem,
                              ),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/icons/project_work_play_icon.svg',
                                width: 31.5 * SizeConfig.ffem,
                                height: 31.5 * SizeConfig.ffem,
                              ),
                            ),
                          )
                        : Container(
                            width: 31.5 * SizeConfig.ffem,
                            height: 31.5 * SizeConfig.ffem,
                            decoration: BoxDecoration(
                              // color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                20 * SizeConfig.fem,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '',
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
                      'Task 01',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12 * SizeConfig.ffem,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(TaskPage.routeName);
              },
              child: SvgPicture.asset(
                'assets/icons/right_arrow.svg',
                width: 6 * SizeConfig.fem,
                height: 12 * SizeConfig.ffem,
              ),
            )
          ],
        ),
      ),
    );
  }
}
