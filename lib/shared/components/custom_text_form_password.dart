import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/shared/helper/constants.dart';

import 'custom_text.dart';

class CustomTextFormFieldPassword extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? type;
  final String? text;
  final String? hint;
  final Function(String)? onSubmit;
  final Function(String)? onChange;
  final FormFieldValidator? validate;
  final String? labelText;
  final IconData? prefixIcon;
  final Function()? onTap;
  final IconData? suffixIcon;
  final bool isPassword;
  final Function? suffixPressed;
  final Function(String?)? onSaved;
  final FocusNode? focusNode;
  final double? width;
  final double? height;

  CustomTextFormFieldPassword({
    this.controller,
    this.type,
    this.text,
    this.hint,
    this.onSubmit,
    this.onChange,
    this.validate,
    this.labelText,
    this.prefixIcon,
    this.onTap,
    this.suffixIcon,
    this.isPassword = false,
    this.suffixPressed,
    this.onSaved,
    this.focusNode,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      child: Column(
        children: [
          CustomText(
            fontSize: 14.sp,
            color: Colors.grey.shade300,
          ),
          Expanded(
            child: TextFormField(
              focusNode: focusNode,
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.left,
              controller: controller,
              keyboardType: type,
              onFieldSubmitted: onSubmit,
              onChanged: onChange,
              onTap: onTap,
              onSaved: onSaved,
              validator: validate,
              obscureText: isPassword,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.all(Radius.circular(20.r))),
                fillColor: Colors.white,
                filled: true,
                labelText: labelText,
                hintText: hint,
                hintStyle:
                    TextStyle(color: Colors.grey.shade400, fontSize: 18.sp),
                prefixIcon: Icon(prefixIcon),
                suffixIcon: IconButton(
                  icon: Icon(suffixIcon),
                  onPressed: () {
                    suffixPressed!();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
