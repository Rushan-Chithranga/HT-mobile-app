import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(
        bottom: 10 * SizeConfig.fem,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Changed",
            style: TextStyle(
              fontSize: 12 * SizeConfig.ffem,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            children: [
              Text(
                "2 Mar 2023",
                style: TextStyle(
                  fontSize: 12 * SizeConfig.ffem,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 25 * SizeConfig.fem,
                ),
                child: Text(
                  "17:59",
                  style: TextStyle(
                    fontSize: 12 * SizeConfig.ffem,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
