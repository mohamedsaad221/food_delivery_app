import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery/shared/components/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/shared/helper/constants.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({Key? key}) : super(key: key);

  int pinCodeLength = 4;
  TextEditingController textEditingController = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100.h),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image(
                    image: AssetImage('assets/images/icon_enter.png'),
                  ),
                ),
              ),
              Positioned(
                top: 100.h,
                left: 280.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Image(
                      image: AssetImage('assets/images/bubbles_1.png'),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 250.h,
                left: 280.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Image(
                      image: AssetImage('assets/images/bubbles_2.png'),
                    ),
                    Image(
                      image: AssetImage('assets/images/bubbles_3.png'),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 320.h,
                right: 60.w,
                left: 60.w,
                child: Column(
                  children: [
                    CustomText(
                      text: 'Verification code',
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    CustomText(
                      text: 'We sent you a Verification code to your',
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    CustomText(
                      text: 'mobile number',
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 250,
                left: 30,
                right: 30,
                child: Column(
                  children: [
                    PinCodeTextField(
                      textStyle: TextStyle(color: Colors.white),
                      enableActiveFill: true,
                      autoDismissKeyboard: true,
                      autoDisposeControllers: true,
                      autoFocus: true,
                      enablePinAutofill: true,
                      appContext: context,
                      pastedTextStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      length: pinCodeLength,
                      animationType: AnimationType.fade,
                      validator: (value) {
                        if (value!.length < pinCodeLength) {
                          return "I'm from validator";
                        } else {
                          return null;
                        }
                      },
                      pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(8),
                          inactiveFillColor: opacityPrimaryColor,
                          fieldHeight: 70.h,
                          fieldWidth: 70.w,
                          activeFillColor: opacityPrimaryColor,
                          activeColor: Colors.white,
                          inactiveColor: Colors.white,
                          errorBorderColor: Colors.red,
                          selectedColor: Colors.white,
                          selectedFillColor: opacityPrimaryColor),
                      cursorColor: Colors.black,
                      animationDuration: const Duration(milliseconds: 300),
                      errorAnimationController: errorController,
                      controller: textEditingController,
                      keyboardType: TextInputType.number,
                      onCompleted: (v) {
                        print("Completed");
                        //navigateTo(context, ProfileScreen());
                      },
                      // onTap: () {
                      //   print("Pressed");
                      // },
                      onChanged: (value) {
                        print(value);
                        // setState(() {
                        currentText = value;
                        // });
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 295,
                  left: 60,
                  right: 60,
                  child: TextButton(
                      onPressed: () {},
                      child: Text('Resent Verification code',style: TextStyle(color: Colors.white),),))
            ],
          ),
        ),
      ),
    );
  }
}
