import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double fontSize;
  final Color color;
  final Alignment alignment;
  final TextAlign textAlign;
  final double height;
  final int? maxLine;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  final TextOverflow? overflow;
  final bool? softWrap;

   CustomText({
    this.text = '',
    this.fontSize = 16.0,
    this.color = Colors.black,
    this.alignment = Alignment.topLeft,
    this.textAlign = TextAlign.center,
    this.height = 1,
    this.maxLine,
    this.fontWeight,
    this.letterSpacing = 0,
    this.overflow,
    this.softWrap = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text!,
        style: TextStyle(
          color: color,
          height: height.h,
          fontSize: fontSize.sp,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing,
        ),
        maxLines: maxLine,
        overflow: overflow,
        softWrap: softWrap,
        textAlign: textAlign,
      ),
    );
  }
}