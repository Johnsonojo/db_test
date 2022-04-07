// import 'package:flutter/material.dart';

// class CustomInputField extends StatelessWidget {
//   final bool obscureText;
//   final String? labelText;
//   final IconData? prefixIcon;
//   final IconData? suffixIcon;
//   final Color? borderColor;
//   final Color enabledBorderColor;
//   final double borderRadius;
//   final Color labelColor;
//   final bool? enabled;

//   const CustomInputField(
//       {Key? key,
//       required this.obscureText,
//       this.labelText,
//       this.prefixIcon,
//       this.suffixIcon,
//       this.borderColor,
//       required this.borderRadius,
//       required this.enabledBorderColor,
//       required this.labelColor,
//       this.enabled})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       enabled: null == enabled ? true : false,
//       obscureText: obscureText,
//       decoration: InputDecoration(
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(borderRadius),
//         ),
//         enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(borderRadius),
//             borderSide:
//                 const BorderSide(color: Colors.transparent, width: 2.0)),
//         filled: true,
//         fillColor: Colors.grey[550],
//         focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(borderRadius),
//             borderSide:
//                 const BorderSide(color: Colors.transparent, width: 2.0)),
//         labelText: labelText,
//         labelStyle: TextStyle(
//             color: labelColor, fontSize: 14.0, fontWeight: FontWeight.bold),
//         suffixIcon: null == suffixIcon
// ? null
//             : Icon(suffixIcon, color: labelColor, size: 20.0),
//         prefixIcon: null == prefixIcon
//             ? null
//             : Icon(prefixIcon, color: labelColor, size: 20.0),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ReusableInputField extends StatelessWidget {
  final bool obscureText;
  final String? labelText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color? borderColor;
  final Color enabledBorderColor;
  final double borderRadius;
  final Color labelColor;
  final bool? enabled;
  final String hintText;
  final bool? hasLabelText;
  final double height;
  final TextEditingController controller;

  const ReusableInputField(
      {Key? key,
      required this.obscureText,
      this.labelText,
      this.prefixIcon,
      this.suffixIcon,
      this.borderColor,
      required this.borderRadius,
      required this.enabledBorderColor,
      required this.labelColor,
      this.enabled,
      required this.hintText,
      this.hasLabelText,
      required this.height,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: MediaQuery.of(context).size.width,
      child: TextField(
        controller: controller,
        enabled: null == enabled ? true : false,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide:
                  const BorderSide(color: Color(0xFFC4C4C4), width: 2.0)),
          filled: true,
          fillColor: Colors.white,
          focusColor: Colors.white,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide:
                  const BorderSide(color: Color(0xFFC4C4C4), width: 2.0)),
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
              color: Colors.grey[400]),
          labelText: hasLabelText == true ? labelText : null,
          labelStyle: TextStyle(
              color: labelColor, fontSize: 14.0, fontWeight: FontWeight.bold),
          suffixIcon: null == suffixIcon
              ? null
              : Icon(suffixIcon, color: labelColor, size: 20.0),
          prefixIcon: null == prefixIcon
              ? null
              : Icon(prefixIcon, color: labelColor, size: 20.0),
        ),
      ),
    );
  }
}
