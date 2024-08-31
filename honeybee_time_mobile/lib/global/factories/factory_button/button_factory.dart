import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/factories/factory_button/base_button.dart';
import 'package:honeybee_time_mobile/global/factories/factory_button/button_widgets/honeybee_elavated_button.dart';
import 'package:honeybee_time_mobile/global/factories/factory_button/button_widgets/honeybee_link_button.dart';

enum ButtonType { floating, elevated, fullRound, link }

class ButtonFactory {
  static BaseButton createButton(ButtonType type,
      {required String text,
      required VoidCallback? onPressed,
      Color? textColor,
      Color? foreGroundColor,
      Color? buttonBackgroundColor,
      Color? buttonBorderColor,
      FontWeight? fontWeight,
      double? fontSize,
      double? borderSize,
      bool? enableBorder,
      dynamic params}) {
    switch (type) {
      case ButtonType.elevated:
        return HoneybeeElavatedButton(
          text: text,
          onPressed: onPressed,
          textColor: textColor,
          foreGroundColor: foreGroundColor,
          buttonBackgroundColor: buttonBackgroundColor,
          buttonBorderColor: buttonBorderColor,
          fontWeight: fontWeight,
          borderSize: borderSize,
          fontSize: fontSize,
          enableBorder: enableBorder,
          width: params?['width'],
          height: params?['height'],
          borderRadius: params?['borderRadius'],
          isIconElevated: params?['isIconElevated'],
          buttonIcon: params?['buttonIcon'],
        );
      case ButtonType.link:
        return HoneybeeLinkButton(
          text: text,
          onPressed: onPressed,
          textColor: textColor,
        );
      default:
        throw Exception("Invalid button type");
    }
  }
}
