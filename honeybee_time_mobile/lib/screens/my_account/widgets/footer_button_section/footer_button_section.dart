import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';
import 'package:honeybee_time_mobile/global/factories/factory_button/button_factory.dart';
import 'package:honeybee_time_mobile/global/helpers/custom_edgeInsets/custom_edgeInsets.dart';
import 'package:honeybee_time_mobile/global/widgets/custom_dialog_box/custom_dialog_box.dart';

class FooterButtonSection extends StatefulWidget {
  const FooterButtonSection({super.key});

  @override
  State<FooterButtonSection> createState() => _FooterButtonSectionState();
}

class _FooterButtonSectionState extends State<FooterButtonSection> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Positioned(
      left: 0 * SizeConfig.fem,
      top: 0 * SizeConfig.fem,
      child: Container(
        padding: customEdgeInsets(context, 0, 500, 0, 0),
        width: 360 * SizeConfig.fem,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: customEdgeInsets(context, 21, 0, 21, 20),
              width: double.infinity,
              height: 35 * SizeConfig.fem,
              child: ButtonFactory.createButton(
                ButtonType.elevated,
                text: "Delete account",
                fontSize: kSmallestFontSize,
                onPressed: () {
                  showDialogWidget(context,
                      title: "Delete your Honeybeetime account?",
                      titleColor: kMain_Zeta_500,
                      content:
                          "Morem ipsum dolor sit amet, consectetur adipi elit. Nunc vulputate libero.",
                      buttonText: "Delete",
                      buttonBackgroundColor: kMain_Zeta_500);
                },
                params: {
                  'isIconElevated': true,
                  'width': 100.0,
                  'buttonIcon': SvgPicture.asset(
                    'assets/icons/trash.svg',
                    width: 20 * SizeConfig.fem,
                    height: 20 * SizeConfig.fem,
                  ),
                },
                buttonBackgroundColor: Colors.transparent,
                textColor: kMain_Zeta_500,
              ),
            ),
            Container(
              margin: customEdgeInsets(context, 21, 0, 21, 59),
              width: 320 * SizeConfig.fem,
              height: 35 * SizeConfig.fem,
              child: ButtonFactory.createButton(
                ButtonType.elevated,
                text: "Sign out",
                enableBorder: true,
                fontSize: kPrimaryFontSize,
                onPressed: () {
                  showDialogWidget(
                    context,
                    title: "Would you like to sign out?",
                    content:
                        "Morem ipsum dolor sit amet, consectetur adipi elit. Nunc vulputate libero.",
                    buttonText: 'Sign out',
                  );
                },
                params: {
                  'isIconElevated': true,
                  'width': 100.0,
                  'buttonIcon': SvgPicture.asset(
                    'assets/icons/signOut.svg',
                    width: 15 * SizeConfig.fem,
                    height: 15 * SizeConfig.fem,
                  ),
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
