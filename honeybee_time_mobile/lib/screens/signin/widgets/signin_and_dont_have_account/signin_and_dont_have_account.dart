import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/helpers/custom_edgeInsets/custom_edgeInsets.dart';
import 'package:honeybee_time_mobile/global/factories/factory_button/button_factory.dart';
import 'package:honeybee_time_mobile/global/widgets/dont_have_account/dont_have_account.dart';

class SignInAndDontHaveAccount extends StatefulWidget {
  const SignInAndDontHaveAccount({super.key});

  @override
  State<SignInAndDontHaveAccount> createState() =>
      _SignInAndDontHaveAccountState();
}

class _SignInAndDontHaveAccountState extends State<SignInAndDontHaveAccount> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              margin: customEdgeInsets(context, 0, 0, 0, 7.5),
              width: double.infinity,
              child: const DontHaveAccount()),
          Container(
              margin: customEdgeInsets(context, 20, 0, 20, 0),
              child: ButtonFactory.createButton(ButtonType.elevated,
                  text: "Sign up for free",
                  onPressed: () {},
                  enableBorder: true)),
        ],
      ),
    );
  }
}
