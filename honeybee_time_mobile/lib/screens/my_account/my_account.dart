import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';
import 'package:honeybee_time_mobile/global/helpers/custom_edgeInsets/custom_edgeInsets.dart';
import 'package:honeybee_time_mobile/global/layouts/main_layouts/main_layouts.dart';
import 'package:honeybee_time_mobile/screens/my_account/widgets/footer_button_section/footer_button_section.dart';

class MyAccount extends StatefulWidget {
  static const routeName = '/my_account';
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MainLayout(
        layoutEdgeInsets: customEdgeInsets(context, 0, 0, 0, 0),
        body: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10 * SizeConfig.fem),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/arrow_left.svg',
                        width: 19 * SizeConfig.ffem,
                        height: 19 * SizeConfig.ffem,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0 * SizeConfig.fem),
                    child: const Text(
                      'My account',
                      style: TextStyle(
                        fontSize: kTopicFontSize,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50 * SizeConfig.fem,
                  ),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 100 * SizeConfig.fem,
                  child: Center(
                      child: SvgPicture.asset(
                    'assets/icons/my_account_avatar.svg',
                    width: 48 * SizeConfig.fem,
                    height: 48 * SizeConfig.fem,
                  )),
                ),
                Positioned(
                  top: 160 * SizeConfig.fem,
                  child: Center(
                      child: Column(
                    children: [
                      Text(
                        'Jonathan',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: kTopicFontSize * SizeConfig.ffem,
                          fontWeight: FontWeight.w600,
                          height:
                              1.2000000817 * SizeConfig.ffem / SizeConfig.fem,
                          letterSpacing: 0.42 * SizeConfig.fem,
                          color: kBeta_600,
                        ),
                      ),
                      Text(
                        'Jonathancagle@gmail.com',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: kSmallestFontSize * SizeConfig.ffem,
                          fontWeight: FontWeight.w400,
                          height:
                              1.2000000817 * SizeConfig.ffem / SizeConfig.fem,
                          color: kBeta_600,
                        ),
                      ),
                    ],
                  )),
                ),
                const FooterButtonSection(),
              ],
            )
          ],
        ));
  }
}
