import 'package:flutter/material.dart';

abstract class BaseButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? textColor;
  final Color? foreGroundColor;
  final Color? buttonBackgroundColor;
  final Color? buttonBorderColor;
  final bool? enableBorder;
  final double? borderSize;
  final FontWeight? fontWeight;
  final double? fontSize;

  const BaseButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.textColor,
    this.foreGroundColor,
    this.buttonBackgroundColor,
    this.buttonBorderColor,
    this.enableBorder,
    this.borderSize,
    this.fontWeight,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: buildButton(context),
    );
  }

  Widget buildButton(BuildContext context);
}
