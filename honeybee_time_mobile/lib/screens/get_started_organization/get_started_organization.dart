import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';
import 'package:honeybee_time_mobile/global/helpers/custom_edgeInsets/custom_edgeInsets.dart';
import 'package:honeybee_time_mobile/global/layouts/main_layouts/main_layouts.dart';
import 'package:honeybee_time_mobile/global/widgets/search_box/search_box.dart';
import 'package:honeybee_time_mobile/screens/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:honeybee_time_mobile/screens/get_started_organization/widgets/create_a_new_organization/create_a_new_organization.dart';
import 'package:honeybee_time_mobile/screens/get_started_organization/widgets/page_footer_logo/page_footer_logo.dart';
import 'package:honeybee_time_mobile/screens/get_started_organization/widgets/page_header_design/page_header_design.dart';

class GetStartedOrganization extends StatefulWidget {
  static const routeName = '/get_started_organization';
  const GetStartedOrganization({super.key});

  @override
  State<GetStartedOrganization> createState() => _GetStartedOrganizationState();
}

class _GetStartedOrganizationState extends State<GetStartedOrganization> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MainLayout(
      singaleScrollViewEnable: true,
      layoutEdgeInsets: customEdgeInsets(context, 20, 40, 20, 40.08),
      body: SizedBox(
        // frame42ggK (210:5583)
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame41RP1 (210:5582)
              margin: customEdgeInsets(context, 0, 0, 0, 190.5),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const PageHeaderDesign(),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SearchBox(),
                        SizedBox(
                          // frame39Aom (210:5580)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // avatarlabelgroupLTM (168:5934)
                                margin: customEdgeInsets(context, 0, 0, 0, 38),
                                width: double.infinity,
                                height: 41 * SizeConfig.fem,
                                child: SizedBox(
                                  // frame1tUs (I168:5934;168:5835)
                                  width: 166 * SizeConfig.fem,
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // avatardxF (I168:5934;167:4931)
                                        margin: customEdgeInsets(
                                            context, 0, 0, 10, 6),
                                        width: 35 * SizeConfig.fem,
                                        height: 35 * SizeConfig.fem,
                                        decoration: BoxDecoration(
                                          color: kMain_gamma_500,
                                          borderRadius: BorderRadius.circular(
                                              200 * SizeConfig.fem),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'O',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: kPrimaryFontSize *
                                                  SizeConfig.ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2000000817 *
                                                  SizeConfig.ffem /
                                                  SizeConfig.fem,
                                              color: kMain_epsilon_500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 121 * SizeConfig.fem,
                                        height: 32 * SizeConfig.fem,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).pushNamed(
                                                BottomNavigationScreen
                                                    .routeName);
                                          },
                                          child: Text(
                                            'Organization 01',
                                            style: TextStyle(
                                              fontSize: kPrimaryFontSize *
                                                  SizeConfig.ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2000000817 *
                                                  SizeConfig.ffem /
                                                  SizeConfig.fem,
                                              letterSpacing:
                                                  0.42 * SizeConfig.fem,
                                              color: kMain_beta_500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const CreateNewOrganization()
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const PageFooterLogo()
          ],
        ),
      ),
    );
  }
}
