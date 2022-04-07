import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final Color backgroundColor;
  final Color borderColor;
  final double fontSize;
  final FontWeight? fontWeight;
  final double height;
  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final double width;
  final double? elevation;
  final BorderRadius? borderRadius;

  const ReusableButton({
    Key? key,
    required this.backgroundColor,
    required this.borderColor,
    required this.fontSize,
    required this.fontWeight,
    required this.height,
    required this.onPressed,
    required this.text,
    required this.textColor,
    required this.width,
    this.elevation,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: MaterialButton(
        elevation: elevation,
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: fontSize, fontWeight: fontWeight),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
        border: Border.all(color: borderColor, width: 1.0),
      ),
    );
  }
}
