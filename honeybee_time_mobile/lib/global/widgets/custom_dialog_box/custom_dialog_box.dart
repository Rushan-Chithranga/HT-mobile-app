import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';
import 'package:honeybee_time_mobile/global/factories/factory_button/button_factory.dart';

showDialogWidget(
  BuildContext context, {
  required String content,
  required String title,
  Color? titleColor = kBeta_400,
  Color? contentColor = kBeta_200,
  Color? buttonBackgroundColor,
  String? buttonText = '',
}) {
  SizeConfig().init(context);
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    title: Text(
      title,
      style: TextStyle(
        fontSize: kPrimaryFontSize * SizeConfig.ffem,
        fontWeight: FontWeight.w400,
        color: titleColor,
      ),
    ),
    content: Text(
      content,
      style: TextStyle(
        fontSize: kSmallestFontSize * SizeConfig.ffem,
        fontWeight: FontWeight.w400,
        color: contentColor,
      ),
    ),
    actions: [
      Container(
        margin: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ButtonFactory.createButton(
              ButtonType.elevated,
              fontWeight: FontWeight.w400,
              fontSize: kSmallestFontSize,
              text: "Cancel",
              enableBorder: false,
              textColor: const Color(0xff120EE9),
              buttonBackgroundColor: Colors.transparent,
              onPressed: () {
                Navigator.pop(context);
              },
              params: {
                "width": 100.0,
                "height": 24.0,
              },
            ),
            const SizedBox(
              width: 5.0,
            ),
            ButtonFactory.createButton(
              ButtonType.elevated,
              buttonBackgroundColor: buttonBackgroundColor,
              text: buttonText!,
              fontWeight: FontWeight.w400,
              fontSize: kSmallestFontSize,
              onPressed: () {
                Navigator.pop(context);
              },
              params: {
                "width": 100.0,
                "height": 24.0,
              },
            ),
          ],
        ),
      )
    ],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
