import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';
import 'package:honeybee_time_mobile/global/helpers/custom_edgeInsets/custom_edgeInsets.dart';
import 'package:honeybee_time_mobile/global/layouts/main_layouts/main_layouts.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/widgets/dont_have_account/dont_have_account.dart';
import 'package:honeybee_time_mobile/global/factories/factory_button/button_factory.dart';
import 'package:honeybee_time_mobile/screens/signin/signin.dart';
import 'package:honeybee_time_mobile/screens/welcome/widgets/having_trouble/having_trouble.dart';
import 'package:honeybee_time_mobile/screens/welcome/widgets/version_text/version_text.dart';
import 'package:lottie/lottie.dart';

class Welcome extends StatefulWidget {
  static const routeName = '/welcome';
  const Welcome({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MainLayout(
      layoutEdgeInsets: customEdgeInsets(context, 0, 40, 0, 40),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: customEdgeInsets(context, 20, 0, 20, 40.5),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: customEdgeInsets(context, 0, 0, 0, 41),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: customEdgeInsets(context, 115, 0, 115, 23),
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
                                'Welcome',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: kTopicFontSize * SizeConfig.fem,
                                  fontWeight: FontWeight.w600,
                                  height:
                                      1.2 * SizeConfig.ffem / SizeConfig.fem,
                                  color: kMain_beta_500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  margin:
                                      customEdgeInsets(context, 0, 0, 0, 16),
                                  child: ButtonFactory.createButton(
                                    ButtonType.elevated,
                                    text: "Sign in to your account",
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed(SignIn.routeName);
                                    },
                                  )),
                              const HavingTrouble(),
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Lottie.asset(
                              'assets/images/Desktop animation.json',
                              width: 180 * SizeConfig.fem,
                              height: 180 * SizeConfig.fem,
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: customEdgeInsets(context, 0, 0, 0, 28),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: customEdgeInsets(context, 0, 0, 0, 7.5),
                          width: double.infinity,
                          child: const DontHaveAccount(),
                        ),
                        Container(
                            margin: customEdgeInsets(context, 20, 0, 20, 0),
                            child: ButtonFactory.createButton(
                                ButtonType.elevated,
                                text: "Sign up for free",
                                onPressed: () {},
                                enableBorder: true))
                      ],
                    ),
                  ),
                  const VersionText()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
