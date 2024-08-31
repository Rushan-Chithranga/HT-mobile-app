import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';
import 'package:honeybee_time_mobile/global/helpers/custom_edgeInsets/custom_edgeInsets.dart';
import 'package:honeybee_time_mobile/screens/more/widgets/bottom_show_modal/bottom_show_modal.dart';
import 'package:honeybee_time_mobile/screens/my_account/my_account.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: const BoxDecoration(
        color: kMain_epsilon_500,
      ),
      child: Stack(
        children: [
          Positioned(
            left: 156 * SizeConfig.fem,
            top: 88 * SizeConfig.fem,
            child: Container(
              width: 48 * SizeConfig.fem,
              height: 48 * SizeConfig.fem,
              decoration: BoxDecoration(
                color: kMain_gamma_500,
                borderRadius: BorderRadius.circular(200 * SizeConfig.fem),
              ),
              child: Center(
                child: Text(
                  'O',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24 * SizeConfig.ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2000000477 * SizeConfig.ffem / SizeConfig.fem,
                    color: kMain_epsilon_500,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 110 * SizeConfig.fem,
            top: 146 * SizeConfig.fem,
            child: TextButton(
              onPressed: () async {
                bottomShowModal(context);
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      margin: customEdgeInsets(context, 10, 0, 10, 0),
                      child: Text(
                        'Organization 01',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: kPrimaryFontSize * SizeConfig.ffem,
                          fontWeight: FontWeight.w600,
                          height:
                              1.2000000817 * SizeConfig.ffem / SizeConfig.fem,
                          letterSpacing: 0.42 * SizeConfig.fem,
                          color: kBeta_600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12 * SizeConfig.fem,
                    height: 6 * SizeConfig.fem,
                    child: SvgPicture.asset(
                      "assets/icons/down_arrow.svg",
                      width: 12 * SizeConfig.fem,
                      height: 6 * SizeConfig.fem,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 162 * SizeConfig.fem,
            top: 40 * SizeConfig.fem,
            child: Center(
              child: Align(
                child: SizedBox(
                  width: 36 * SizeConfig.fem,
                  height: 17 * SizeConfig.fem,
                  child: Text(
                    'More',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14 * SizeConfig.ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2000000817 * SizeConfig.ffem / SizeConfig.fem,
                      color: kMain_beta_500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0 * SizeConfig.fem,
            top: 0 * SizeConfig.fem,
            child: Container(
              padding: customEdgeInsets(context, 0, 520, 0, 0),
              width: 360 * SizeConfig.fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: customEdgeInsets(context, 21, 0, 21, 59),
                    width: double.infinity,
                    height: 35 * SizeConfig.fem,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(MyAccount.routeName);
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: customEdgeInsets(context, 2, 2, 2, 2),
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: kBeta_100),
                          borderRadius:
                              BorderRadius.circular(17 * SizeConfig.fem),
                        ),
                        child: SizedBox(
                          width: 304 * SizeConfig.fem,
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: customEdgeInsets(context, 0, 0, 20, 0),
                                width: 31 * SizeConfig.fem,
                                height: 31 * SizeConfig.fem,
                                child: SvgPicture.asset(
                                  "assets/icons/my_account_avatar.svg",
                                  width: 31 * SizeConfig.fem,
                                  height: 31 * SizeConfig.fem,
                                ),
                              ),
                              Container(
                                margin: customEdgeInsets(context, 0, 0, 0, 0),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: customEdgeInsets(
                                          context, 0, 0, 176, 0),
                                      child: Text(
                                        'My account',
                                        style: TextStyle(
                                          fontSize: 12 * SizeConfig.ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125 *
                                              SizeConfig.ffem /
                                              SizeConfig.fem,
                                          color: kMain_beta_500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10 * SizeConfig.fem,
                                      height: 10 * SizeConfig.fem,
                                      child: SvgPicture.asset(
                                        "assets/icons/right_arrow.svg",
                                        width: 10 * SizeConfig.fem,
                                        height: 10 * SizeConfig.fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
