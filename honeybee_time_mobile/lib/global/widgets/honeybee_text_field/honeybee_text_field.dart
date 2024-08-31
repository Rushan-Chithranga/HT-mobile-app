// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honeybee_time_mobile/global/configs/size_config.dart';
import 'package:honeybee_time_mobile/global/consts/colors.dart';

class HoneyBeeTextField extends StatefulWidget {
  final String iconUrl;
  final String labelText;
  bool isPasswordShow;
  bool isPasswordField = false;
  final ValueChanged<bool> onChanged;
  Color? iconColor;
  double width;
  double height;

  HoneyBeeTextField({
    super.key,
    required this.iconUrl,
    required this.labelText,
    required this.onChanged,
    this.isPasswordShow = false,
    this.isPasswordField = false,
    this.iconColor = kMain_alpha_500,
    this.width = 18.33,
    this.height = 18.33,
  });

  @override
  State<HoneyBeeTextField> createState() => _HoneyBeeTextFieldState();
}

class _HoneyBeeTextFieldState extends State<HoneyBeeTextField> {
  final FocusNode _focusNode = FocusNode();
  bool _textEditHasFocus = false;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _textEditHasFocus = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 0,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          TextField(
            obscureText: widget.isPasswordShow,
            obscuringCharacter: "*",
            controller: _textEditingController,
            focusNode: _focusNode,
            onChanged: (value) {
              setState(() {
                widget.onChanged(value.isNotEmpty);
              });
            },
            style: TextStyle(
                color:
                    !_textEditHasFocus ? kBeta_100 : const Color(0xFF45474F)),
            decoration: InputDecoration(
              filled:
                  !_textEditHasFocus && _textEditingController.text.isNotEmpty,
              fillColor: kAlpha_50,
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: kBeta_200),
                borderRadius: BorderRadius.circular(8 * SizeConfig.fem),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8 * SizeConfig.fem),
                borderSide: const BorderSide(color: kMain_alpha_500),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: kDelta_100),
                borderRadius: BorderRadius.circular(8 * SizeConfig.fem),
              ),
              contentPadding: const EdgeInsets.only(left: 40),
              suffixIcon: widget.isPasswordField
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          widget.isPasswordShow = !widget.isPasswordShow;
                        });
                      },
                      icon: (widget.isPasswordShow
                          ? SvgPicture.asset(
                              'assets/icons/hide.svg',
                              width: 18.33 * SizeConfig.fem,
                              height: 18.33 * SizeConfig.fem,
                              color: _textEditHasFocus
                                  ? kMain_alpha_500
                                  : kBeta_200,
                            )
                          : SvgPicture.asset(
                              'assets/icons/show.svg',
                              width: 18.33 * SizeConfig.fem,
                              height: 13.22 * SizeConfig.fem,
                              color: _textEditHasFocus
                                  ? kMain_alpha_500
                                  : kBeta_200,
                            )),
                      color: kBeta_200,
                    )
                  : null,
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            left: (_textEditHasFocus || _textEditingController.text.isNotEmpty)
                ? 10
                : 40,
            top: (_textEditHasFocus || _textEditingController.text.isNotEmpty)
                ? -8
                : 13,
            child: InkWell(
              onTap: () {
                _focusNode.requestFocus();
              },
              child: Container(
                padding: const EdgeInsets.only(left: 3),
                // color: Color.fromARGB(255, 9, 219, 195),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: !_textEditHasFocus
                        ? <Color>[
                            kMain_epsilon_500,
                            const Color(0xffFEF4E9),
                          ]
                        : <Color>[
                            kMain_epsilon_500,
                            kMain_epsilon_500,
                          ],
                    tileMode: TileMode.mirror,
                  ),
                ),
                child: Text(
                  widget.labelText,
                  style: TextStyle(
                    backgroundColor: _textEditingController.text.isNotEmpty
                        ? Colors.transparent
                        : Colors.white,
                    fontSize: (_focusNode.hasFocus ||
                            _textEditingController.text.isNotEmpty)
                        ? 10 * SizeConfig.ffem
                        : 14 * SizeConfig.ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.2000000817 * SizeConfig.ffem / SizeConfig.fem,
                    color: (_focusNode.hasFocus ||
                            _textEditingController.text.isNotEmpty &&
                                _textEditHasFocus)
                        ? kMain_alpha_500
                        : kBeta_100,
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                color: Colors.transparent,
                child: SvgPicture.asset(
                  widget.iconUrl,
                  width: widget.width * SizeConfig.fem,
                  height: widget.height * SizeConfig.fem,
                  color: widget.iconColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
