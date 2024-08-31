import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';
import 'package:honeybee_time_mobile/screens/more/widgets/bottom_show_modal/organization/organization.dart';

Future bottomShowModal(context) async {
  SizeConfig().init(context);
  return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(17 * SizeConfig.fem),
        topRight: Radius.circular(17 * SizeConfig.fem),
      )),
      builder: (context) {
        return SizedBox(
          height: 135 * SizeConfig.fem,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 50 * SizeConfig.fem,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0 * SizeConfig.fem),
                    child: const Text(
                      'Organizations',
                      style: TextStyle(
                        fontSize: kTopicFontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10 * SizeConfig.fem),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/close.svg',
                        width: 8 * SizeConfig.ffem,
                        height: 8 * SizeConfig.ffem,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 30 * SizeConfig.fem,
                        right: 30 * SizeConfig.fem,
                        top: 30 * SizeConfig.fem),
                    child: const Organization(),
                  )
                ],
              )
            ],
          ),
        );
      });
}
