import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/factories/factory_button/button_factory.dart';
import 'package:honeybee_time_mobile/global/helpers/custom_edgeInsets/custom_edgeInsets.dart';
import 'package:honeybee_time_mobile/global/providers/button_status_provider/button_status_provider.dart';
import 'package:honeybee_time_mobile/global/widgets/honeybee_text_field/honeybee_text_field.dart';
import 'package:provider/provider.dart';

class OrganizationForm extends StatefulWidget {
  const OrganizationForm({super.key});

  @override
  State<OrganizationForm> createState() => _OrganizationFormState();
}

class _OrganizationFormState extends State<OrganizationForm> {
  final FocusNode focusOrganizationName = FocusNode();
  final FocusNode focusIndustry = FocusNode();
  final FocusNode focusTeamSize = FocusNode();
  final FocusNode focusTimeZone = FocusNode();
  bool textEditHasFocus = false;
  bool isButtonEnabled = false;
  bool isOrganizationNameFilled = false;
  bool isIndustryFilled = false;
  bool isTeamSizeFilled = false;
  bool isTimeZoneFilled = false;

  @override
  void initState() {
    super.initState();
    focusOrganizationName.addListener(() {
      setState(() {});
    });
    focusIndustry.addListener(() {
      setState(() {});
    });
    focusTeamSize.addListener(() {
      setState(() {});
    });
    focusTimeZone.addListener(() {
      setState(() {});
    });
  }

  void updateButtonEnabledStatus() {
    setState(() {
      isButtonEnabled = isOrganizationNameFilled &&
          isIndustryFilled &&
          isTeamSizeFilled &&
          isTimeZoneFilled;
      Provider.of<ButtonStatusProvider>(context, listen: false)
          .updateButtonStatus(isButtonEnabled);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: customEdgeInsets(context, 0, 0, 0, 40),
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: customEdgeInsets(context, 0, 5, 0, 0),
                    child: HoneyBeeTextField(
                      labelText: "Organization",
                      iconUrl: 'assets/icons/organization.svg',
                      width: 20,
                      height: 22.46,
                      onChanged: (bool filled) {
                        setState(() {
                          isOrganizationNameFilled = filled;
                          updateButtonEnabledStatus();
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 24 * SizeConfig.fem,
                  ),
                  HoneyBeeTextField(
                    labelText: "Industry",
                    iconUrl: 'assets/icons/industry.svg',
                    onChanged: (bool filled) {
                      setState(() {
                        isIndustryFilled = filled;
                        updateButtonEnabledStatus();
                      });
                    },
                  ),
                  SizedBox(
                    height: 24 * SizeConfig.fem,
                  ),
                  HoneyBeeTextField(
                    labelText: "Team size",
                    iconUrl: 'assets/icons/team_size.svg',
                    onChanged: (bool filled) {
                      setState(() {
                        isTeamSizeFilled = filled;
                        updateButtonEnabledStatus();
                      });
                    },
                  ),
                  SizedBox(
                    height: 24 * SizeConfig.fem,
                  ),
                  HoneyBeeTextField(
                    labelText: "Time zone",
                    iconUrl: 'assets/icons/time_zone.svg',
                    iconColor: null,
                    width: 20,
                    height: 20,
                    onChanged: (bool filled) {
                      setState(() {
                        isTimeZoneFilled = filled;
                        updateButtonEnabledStatus();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Consumer<ButtonStatusProvider>(
            builder: (context, value, child) {
              return ButtonFactory.createButton(
                ButtonType.elevated,
                text: "Create organization",
                onPressed: value.buttonStatus ? () {} : null,
              );
            },
          )
        ],
      ),
    );
  }
}
