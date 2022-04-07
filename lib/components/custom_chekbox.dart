import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  final double width;
  final double height;
  final double iconSize;

  const CustomCheckBox({
    Key? key,
    required this.height,
    required this.width,
    required this.iconSize,
  }) : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  late bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: const Color(0xFF045F3D)),
            color: _isSelected ? const Color(0xFF045F3D) : Colors.white,
            borderRadius: BorderRadius.circular(50.0)),
        width: widget.height,
        height: widget.height,
        child: _isSelected
            ? Icon(Icons.circle_outlined,
                size: widget.iconSize, color: const Color(0xFF045F3D))
            : null,
      ),
    );
  }
}
