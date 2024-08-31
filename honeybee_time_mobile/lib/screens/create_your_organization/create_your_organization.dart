import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';
import 'package:honeybee_time_mobile/global/helpers/custom_edgeInsets/custom_edgeInsets.dart';
import 'package:honeybee_time_mobile/global/providers/button_status_provider/button_status_provider.dart';
import 'package:honeybee_time_mobile/global/layouts/main_layouts/main_layouts.dart';
import 'package:honeybee_time_mobile/screens/create_your_organization/widgets/organization_form/organization_form.dart';
import 'package:provider/provider.dart';

class CreateYourOrganization extends StatefulWidget {
  static const routeName = '/create_your_organization';
  const CreateYourOrganization({super.key});

  @override
  State<CreateYourOrganization> createState() => _CreateYourOrganizationState();
}

class _CreateYourOrganizationState extends State<CreateYourOrganization> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ChangeNotifierProvider(
      create: (context) => ButtonStatusProvider(),
      builder: (context, child) {
        return MainLayout(
          layoutEdgeInsets: customEdgeInsets(context, 20, 40, 20, 40),
          singaleScrollViewEnable: true,
          body: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: customEdgeInsets(context, 75, 0 * SizeConfig.fem,
                      75 * SizeConfig.fem, 48 * SizeConfig.fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: customEdgeInsets(context, 0, 0, 0, 20),
                        width: 59 * SizeConfig.fem,
                        height: 59 * SizeConfig.fem,
                        child: SvgPicture.asset(
                          'assets/images/logo.svg',
                          width: 59 * SizeConfig.fem,
                          height: 59 * SizeConfig.fem,
                        ),
                      ),
                      Text(
                        'Create your organization',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: kPrimaryFontSize * SizeConfig.ffem,
                          fontWeight: FontWeight.w700,
                          height:
                              1.2000000817 * SizeConfig.ffem / SizeConfig.fem,
                          color: kBeta_700,
                        ),
                      ),
                    ],
                  ),
                ),
                const OrganizationForm()
              ],
            ),
          ),
        );
      },
    );
  }
}
