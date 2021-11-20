import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text.dart';

class CustomPhoneTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? type;
  final String? hint;
  final Function(String)? onSubmit;
  final Function(String)? onChange;
  final FormFieldValidator? validate;
  final String? labelText;
  final Function()? onTap;
  final IconData? suffixIcon;
  final bool isPassword;
  final bool enabled;
  final Function? suffixPressed;
  final Function(String?)? onSaved;
  final FocusNode? focusNode;
  final double? width;

  const CustomPhoneTextFormField(
      {Key? key,
      this.controller,
      required this.type,
      required this.hint,
      this.onSubmit,
      this.onChange,
      required this.validate,
      this.labelText,
      this.onTap,
      this.suffixIcon,
      this.isPassword = false,
      this.enabled = true,
      this.suffixPressed,
      this.onSaved,
      this.focusNode,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 90.h,
      width: width,
      child: Column(
        children: [
          Expanded(
            child: TextFormField(
              enabled: true,
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
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(20.r))),
                fillColor: Colors.white,
                filled: true,
                labelText: labelText,
                hintText: hint,
                hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 18.sp),
                prefixIcon: Container(
                  height: 58.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        bottomLeft: Radius.circular(20.r)),
                    color: Colors.white,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                width: .8.w, color: Colors.black.withOpacity(.1)))),
                    child: CountryCodePicker(
                      enabled: true,
                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                      initialSelection: '+971',
                      padding: EdgeInsets.zero,
                      flagWidth: 30.w,
                      onChanged: print,
                      favorite: const ['+20', 'Eg', '+1', 'Us'],
                    ),
                  ),
                ),
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
