import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  final double fontSize;
  final String text;
  final FontWeight fontWeight;
  final Color fontColor;
  final TextAlign? textAlign;
  final double? height;

  const ReusableText(
      {Key? key,
      required this.fontSize,
      required this.text,
      required this.fontWeight,
      required this.fontColor,
      this.textAlign,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        height: height,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: fontColor,
      ),
    );
  }
}
