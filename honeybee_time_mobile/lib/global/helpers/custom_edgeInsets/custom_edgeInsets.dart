import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';

EdgeInsets customEdgeInsets(BuildContext context, double left, double top,
    double right, double bottom) {
  SizeConfig().init(context);
  return EdgeInsets.fromLTRB(
    left * SizeConfig.fem,
    top * SizeConfig.ffem,
    right * SizeConfig.fem,
    bottom * SizeConfig.ffem,
  );
}
