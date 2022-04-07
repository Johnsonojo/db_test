import 'package:flutter/material.dart';

class ReusableIconButton extends StatelessWidget {
  final double elevation;
  final double iconHeight;
  final String image;
  final VoidCallback onPressed;
  final Color color;
  final CircleBorder shape;
  final double size;
  final double iconWidth;
  final bool isImageIcon;
  final IconData? buttonIcon;
  final Color? iconColor;

  const ReusableIconButton({
    Key? key,
    required this.elevation,
    required this.onPressed,
    required this.iconHeight,
    required this.iconWidth,
    required this.image,
    required this.shape,
    required this.size,
    required this.color,
    required this.isImageIcon,
    this.iconColor,
    this.buttonIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: MaterialButton(
        onPressed: onPressed,
        elevation: elevation,
        color: color,
        shape: shape,
        child: Center(
          child: isImageIcon
              ? Image(
                  height: iconHeight,
                  image: AssetImage(image),
                  width: iconWidth)
              : Icon(
                  buttonIcon,
                  color: iconColor,
                ),
        ),
      ),
    );
  }
}
