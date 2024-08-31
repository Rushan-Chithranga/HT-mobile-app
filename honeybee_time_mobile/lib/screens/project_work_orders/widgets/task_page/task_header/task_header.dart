import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';

class TaskHeader extends StatelessWidget {
  const TaskHeader({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: BoxDecoration(
        color: kMain_beta_500,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            15 * SizeConfig.fem,
          ),
          topRight: Radius.circular(
            15 * SizeConfig.fem,
          ),
        ),
      ),
      width: double.infinity,
      height: 131 * SizeConfig.ffem,
      child: Padding(
        padding: EdgeInsets.all(
          25 * SizeConfig.fem,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.asset(
                'assets/icons/arrow_left.svg',
                color: kEpsilon_500,
                width: 20 * SizeConfig.fem,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 25 * SizeConfig.ffem,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Task 01",
                        style: TextStyle(
                          color: kEpsilon_500,
                          fontSize: 16 * SizeConfig.ffem,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Open city 01",
                        style: TextStyle(
                          color: kEpsilon_500,
                          fontSize: 10 * SizeConfig.ffem,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    "assets/icons/project_work_play_icon.svg",
                    width: 45 * SizeConfig.fem,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
