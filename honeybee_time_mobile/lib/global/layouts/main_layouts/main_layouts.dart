import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';

class MainLayout extends StatefulWidget {
  final Widget body;
  final bool singaleScrollViewEnable;
  final EdgeInsets layoutEdgeInsets;
  final Color backgroundColor;

  const MainLayout({
    super.key,
    required this.body,
    this.singaleScrollViewEnable = false,
    required this.layoutEdgeInsets,
    this.backgroundColor = kMain_epsilon_500,
  });

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData actualScreen = MediaQuery.of(context);
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: widget.backgroundColor,
        body: widget.singaleScrollViewEnable
            ? SingleChildScrollView(
                child: Container(
                  padding: widget.layoutEdgeInsets,
                  width: actualScreen.size.width,
                  height: actualScreen.size.height,
                  decoration: const BoxDecoration(
                    color: kMain_epsilon_500,
                  ),
                  child: widget.body,
                ),
              )
            : Container(
                padding: widget.layoutEdgeInsets,
                width: actualScreen.size.width,
                height: actualScreen.size.height,
                decoration: const BoxDecoration(
                  color: kMain_epsilon_500,
                ),
                child: widget.body,
              ),
      ),
    );
  }
}
