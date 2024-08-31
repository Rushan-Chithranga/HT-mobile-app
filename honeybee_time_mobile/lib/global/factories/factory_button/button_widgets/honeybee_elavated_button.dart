// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';
import 'package:honeybee_time_mobile/global/factories/factory_button/base_button.dart';
import 'package:honeybee_time_mobile/global/helpers/custom_edgeInsets/custom_edgeInsets.dart';

class HoneybeeElavatedButton extends BaseButton {
  late double width;
  late double height;
  late double borderRadius;
  late bool isIconElevated;
  late SvgPicture buttonIcon;

  HoneybeeElavatedButton({
    Key? key,
    required String text,
    required VoidCallback? onPressed,
    Color? textColor,
    Color? foreGroundColor,
    Color? buttonBackgroundColor,
    Color? buttonBorderColor,
    FontWeight? fontWeight,
    double? fontSize,
    bool? enableBorder,
    double? borderSize,
    double? width,
    double? height,
    double? borderRadius,
    bool? isIconElevated,
    SvgPicture? buttonIcon,
  }) : super(
          key: key,
          text: text,
          onPressed: onPressed,
          textColor: textColor ?? kMain_alpha_500,
          foreGroundColor: foreGroundColor ?? Colors.white,
          buttonBackgroundColor: buttonBackgroundColor ?? kMain_alpha_500,
          buttonBorderColor: buttonBorderColor ?? kMain_alpha_500,
          fontWeight: fontWeight ?? FontWeight.w600,
          fontSize: fontSize ?? kPrimaryFontSize,
          enableBorder: enableBorder ?? false,
          borderSize: borderSize ?? 1,
        ) {
    this.width = width ?? double.infinity;
    this.height = height ?? 35;
    this.borderRadius = borderRadius ?? 8;
    this.isIconElevated = isIconElevated ?? false;
    this.buttonIcon = buttonIcon ??
        SvgPicture.asset(
          'assets/icons/signOut.svg',
        );
  }

  @override
  Widget buildButton(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: customEdgeInsets(context, 0, 0, 0, 0),
      width: width,
      height: height * SizeConfig.fem,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius * SizeConfig.fem),
      ),
      child: isIconElevated
          ? OutlinedButton.icon(
              onPressed: onPressed,
              icon: buttonIcon,
              label: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: fontSize! * SizeConfig.ffem,
                    fontWeight: fontWeight,
                    height: 1.2000000817 * SizeConfig.ffem / SizeConfig.fem,
                    letterSpacing: 0.42 * SizeConfig.fem,
                    color: textColor),
              ), //label text
              style: OutlinedButton.styleFrom(
                backgroundColor:
                    enableBorder! ? Colors.transparent : buttonBackgroundColor!,
                foregroundColor: foreGroundColor,
                elevation: 0,
                side: !enableBorder!
                    ? const BorderSide(width: 0, color: Colors.transparent)
                    : BorderSide(width: borderSize!, color: buttonBorderColor!),
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(borderRadius * SizeConfig.fem)),
              ),
            )
          : OutlinedButton(
              onPressed: onPressed,
              style: OutlinedButton.styleFrom(
                backgroundColor: enableBorder!
                    ? Colors.transparent
                    : onPressed == null
                        ? kEpsilon_600
                        : buttonBackgroundColor!,
                foregroundColor: foreGroundColor,
                elevation: 0,
                side: !enableBorder!
                    ? const BorderSide(width: 0, color: Colors.transparent)
                    : BorderSide(width: borderSize!, color: buttonBorderColor!),
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(borderRadius * SizeConfig.fem)),
              ),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: fontSize! * SizeConfig.ffem,
                  fontWeight: fontWeight,
                  height: 1.2000000817 * SizeConfig.ffem / SizeConfig.fem,
                  letterSpacing: 0.42 * SizeConfig.fem,
                  color: onPressed == null
                      ? kBeta_200
                      : enableBorder!
                          ? textColor
                          : (buttonBackgroundColor == Colors.transparent)
                              ? textColor
                              : kMain_epsilon_500,
                ),
              ),
            ),
    );
  }
}
