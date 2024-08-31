import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';
import 'package:honeybee_time_mobile/global/helpers/custom_edgeInsets/custom_edgeInsets.dart';
import 'package:honeybee_time_mobile/screens/create_your_organization/create_your_organization.dart';

class CreateNewOrganization extends StatefulWidget {
  const CreateNewOrganization({super.key});

  @override
  State<CreateNewOrganization> createState() => _CreateNewOrganizationState();
}

class _CreateNewOrganizationState extends State<CreateNewOrganization> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: kBeta_100),
        ),
      ),
      margin: customEdgeInsets(context, 10, 0, 9, 0),
      width: double.infinity,
      height: 40.5 * SizeConfig.fem,
      child: SizedBox(
        width: double.infinity,
        height: 36.5 * SizeConfig.fem,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushNamed(CreateYourOrganization.routeName);
              },
              child: Container(
                margin: customEdgeInsets(
                  context,
                  0,
                  0,
                  96,
                  0,
                ),
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: customEdgeInsets(
                        context,
                        0,
                        0,
                        20,
                        0,
                      ),
                      width: 24 * SizeConfig.fem,
                      height: 24 * SizeConfig.ffem,
                      child: SvgPicture.asset(
                        'assets/icons/create_organization.svg',
                        width: 24 * SizeConfig.fem,
                        height: 24 * SizeConfig.ffem,
                      ),
                    ),
                    Container(
                      margin: customEdgeInsets(
                        context,
                        0,
                        4.5,
                        0,
                        0,
                      ),
                      height: 32 * SizeConfig.fem,
                      child: Text(
                        'Create a new organization',
                        style: TextStyle(
                          fontSize: kSmallestFontSize * SizeConfig.ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2125 * SizeConfig.ffem / SizeConfig.fem,
                          color: kMain_beta_500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // chevronrightv67 (I171:5796;171:5575)
              margin: customEdgeInsets(context, 0, 0, 0, 12.5),
              width: 10 * SizeConfig.fem,
              height: 10 * SizeConfig.fem,
              child: SvgPicture.asset(
                'assets/icons/create_organization_chevron_right.svg',
                width: 10 * SizeConfig.fem,
                height: 10 * SizeConfig.fem,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
