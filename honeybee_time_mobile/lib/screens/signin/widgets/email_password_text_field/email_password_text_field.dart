import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/providers/button_status_provider/button_status_provider.dart';
import 'package:honeybee_time_mobile/global/widgets/honeybee_text_field/honeybee_text_field.dart';
import 'package:provider/provider.dart';

class EmailPasswordTextField extends StatefulWidget {
  const EmailPasswordTextField({super.key});

  @override
  State<EmailPasswordTextField> createState() => _EmailPasswordTextFieldState();
}

class _EmailPasswordTextFieldState extends State<EmailPasswordTextField> {
  bool textEditHasFocus = false;
  bool isEmailFilled = false;
  bool isPasswordFilled = false;
  bool isButtonEnabled = false;

  void updateButtonEnabledStatus() {
    setState(() {
      isButtonEnabled = isEmailFilled && isPasswordFilled;
      Provider.of<ButtonStatusProvider>(context, listen: false)
          .updateButtonStatus(isButtonEnabled);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0 * SizeConfig.fem, 10 * SizeConfig.fem,
              0 * SizeConfig.fem, 24 * SizeConfig.fem),
          child: SingleChildScrollView(
            child: HoneyBeeTextField(
              labelText: "Email",
              iconUrl: 'assets/icons/email.svg',
              onChanged: (bool filled) {
                setState(() {
                  isEmailFilled = filled;
                  updateButtonEnabledStatus();
                });
              },
            ),
          ),
        ),
        SingleChildScrollView(
          child: HoneyBeeTextField(
            labelText: "Password",
            iconUrl: 'assets/icons/password.svg',
            isPasswordField: true,
            isPasswordShow: true,
            onChanged: (bool filled) {
              setState(() {
                isPasswordFilled = filled;
                updateButtonEnabledStatus();
              });
            },
          ),
        )
      ],
    );
  }
}
