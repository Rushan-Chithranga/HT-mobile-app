import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';
import 'package:honeybee_time_mobile/global/consts/font_sizes.dart';
import 'package:honeybee_time_mobile/global/helpers/custom_edgeInsets/custom_edgeInsets.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: customEdgeInsets(context, 0, 0, 0, 24),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: customEdgeInsets(context, 18.25, 7, 193, 9),
          filled: true,
          fillColor: kBeta_50,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18 * SizeConfig.fem),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Container(
            margin: customEdgeInsets(context, 18, 0, 10, 2),
            width: 18 * SizeConfig.fem,
            height: 18 * SizeConfig.fem,
            child: SvgPicture.asset(
              'assets/icons/search.svg',
              width: 18 * SizeConfig.fem,
              height: 18 * SizeConfig.fem,
            ),
          ),
          hintText: 'Search',
          hintStyle: TextStyle(
            fontSize: kPrimaryFontSize * SizeConfig.ffem,
            fontWeight: FontWeight.w400,
            height: 1.2000000817 * SizeConfig.ffem / SizeConfig.fem,
            color: kBeta_200,
          ),
        ),
      ),
    );
  }
}
