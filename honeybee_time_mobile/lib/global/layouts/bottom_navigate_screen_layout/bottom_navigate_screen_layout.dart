import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';

class BottomNavigateScreenLayout extends StatefulWidget {
  final Color backgroundColor;
  final List<Widget> widgetList;
  final EdgeInsets padding;
  final CrossAxisAlignment crossAxisAlignment;
  final double width;

  const BottomNavigateScreenLayout({
    super.key,
    this.backgroundColor = kMain_epsilon_500,
    required this.widgetList,
    required this.padding,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.width = double.infinity,
  });

  @override
  State<BottomNavigateScreenLayout> createState() =>
      _BottomNavigateScreenLayoutState();
}

class _BottomNavigateScreenLayoutState
    extends State<BottomNavigateScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      body: SizedBox(
          width: widget.width,
          child: Container(
            padding: widget.padding,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: widget.crossAxisAlignment,
              children: <Widget>[...widget.widgetList],
            ),
          )),
    );
  }
}
