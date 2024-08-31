import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/helpers/custom_edgeInsets/custom_edgeInsets.dart';
import 'package:honeybee_time_mobile/global/layouts/main_layouts/main_layouts.dart';
import 'package:honeybee_time_mobile/global/providers/button_status_provider/button_status_provider.dart';
import 'package:honeybee_time_mobile/global/widgets/welcome_logo/welcome_logo.dart';
import 'package:honeybee_time_mobile/global/factories/factory_button/button_factory.dart';
import 'package:honeybee_time_mobile/screens/get_started_organization/get_started_organization.dart';
import 'package:honeybee_time_mobile/screens/signin/widgets/email_password_text_field/email_password_text_field.dart';
import 'package:honeybee_time_mobile/screens/signin/widgets/signin_and_dont_have_account/signin_and_dont_have_account.dart';
import 'package:provider/provider.dart';

class SignIn extends StatefulWidget {
  static const routeName = '/signin';
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ChangeNotifierProvider(
        create: (context) => ButtonStatusProvider(),
        builder: (context, child) {
          return MainLayout(
            layoutEdgeInsets: customEdgeInsets(context, 0, 40, 0, 40),
            singaleScrollViewEnable: true,
            body: SizedBox(
              width: double.infinity,
              // height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: customEdgeInsets(context, 0, 0, 0, 67.5),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: customEdgeInsets(context, 0, 0, 0, 27),
                          padding: customEdgeInsets(context, 20, 0, 20, 0),
                          width: double.infinity,
                          height: 200 * SizeConfig.fem,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(color: kEpsilon_700, width: 0.5),
                            ),
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            height: 178 * SizeConfig.fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const WelcomeLogo(),
                                Container(
                                    width: double.infinity,
                                    height: 35 * SizeConfig.fem,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          8 * SizeConfig.fem),
                                    ),
                                    child: ButtonFactory.createButton(
                                        ButtonType.elevated,
                                        enableBorder: true,
                                        text: "Sign in to your account",
                                        onPressed: () {})),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: customEdgeInsets(context, 20, 0, 20, 0),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: customEdgeInsets(context, 0, 0, 0, 33),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: customEdgeInsets(
                                            context, 0, 0, 0, 16),
                                        width: double.infinity,
                                        child: const EmailPasswordTextField()),
                                    ButtonFactory.createButton(ButtonType.link,
                                        text: "Forgot password? ",
                                        onPressed: () {})
                                  ],
                                ),
                              ),
                              Consumer<ButtonStatusProvider>(
                                builder: (context, value, child) {
                                  return ButtonFactory.createButton(
                                    ButtonType.elevated,
                                    text: "Sign in",
                                    onPressed: value.buttonStatus
                                        ? () {
                                            Navigator.of(context).pushNamed(
                                                GetStartedOrganization
                                                    .routeName);
                                          }
                                        : null,
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SignInAndDontHaveAccount()
                ],
              ),
            ),
          );
        });
  }
}
