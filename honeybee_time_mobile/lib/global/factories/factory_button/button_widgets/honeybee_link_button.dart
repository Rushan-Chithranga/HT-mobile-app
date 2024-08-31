// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/factories/factory_button/base_button.dart';

class HoneybeeLinkButton extends BaseButton {
  late double width;
  late double height;
  late double borderRadius;

  HoneybeeLinkButton({
    Key? key,
    required String text,
    required VoidCallback? onPressed,
    Color? textColor,
  }) : super(
          key: key,
          text: text,
          onPressed: onPressed,
          textColor: textColor,
        );

  @override
  Widget buildButton(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        'Forgot password? ',
        style: TextStyle(
          fontSize: 10 * SizeConfig.ffem,
          fontWeight: FontWeight.w500,
          height: 1.2 * SizeConfig.ffem / SizeConfig.fem,
          color: kMain_alpha_500,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
