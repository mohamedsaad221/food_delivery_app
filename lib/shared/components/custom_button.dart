
import 'package:flutter/material.dart';
import 'package:food_delivery/shared/helper/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final double radius;
  final double padding;
  final double fontSize;

   CustomButton({
    required this.onPressed,
    this.text = 'write text',
    this.textColor = Colors.white,
    this.color = primaryColor,
    this.radius = 10.0,
    this.padding = 10.0,
     this.fontSize = 16
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(color),
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(padding)),
        side: MaterialStateProperty.all(
            BorderSide(width: 1.w, color: primaryColor),
        ),
      ),
      onPressed: onPressed,
      child: CustomText(
        text: text,
        color: textColor,
        fontSize: fontSize.sp,
        alignment: Alignment.center,
      ),
    );
  }
}