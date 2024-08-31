import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';

class Organization extends StatefulWidget {
  const Organization({super.key});

  @override
  State<Organization> createState() => _OrganizationState();
}

class _OrganizationState extends State<Organization> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10 * SizeConfig.fem),
                  width: 24 * SizeConfig.fem,
                  height: 24 * SizeConfig.fem,
                  decoration: BoxDecoration(
                    color: kMain_gamma_500,
                    borderRadius: BorderRadius.circular(200 * SizeConfig.fem),
                  ),
                  child: Center(
                    child: Text(
                      'O',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: kPrimaryFontSize * SizeConfig.ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2000000477 * SizeConfig.ffem / SizeConfig.fem,
                        color: kMain_epsilon_500,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Organization 01",
                  style: TextStyle(
                    fontSize: kSmallestFontSize * SizeConfig.ffem,
                    fontWeight: FontWeight.w500,
                    color: kMain_beta_500,
                  ),
                ),
              ],
            )
          ],
        ),
        Column(
          children: [
            SvgPicture.asset(
              'assets/icons/check_green.svg',
              height: 10 * SizeConfig.ffem,
              width: 10 * SizeConfig.fem,
            )
          ],
        )
      ],
    );
  }
}
