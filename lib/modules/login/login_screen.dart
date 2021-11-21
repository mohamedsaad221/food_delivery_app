import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/layout/home_layout_screen.dart';
import 'package:food_delivery/modules/otp/otp_screen.dart';
import 'package:food_delivery/shared/components/components.dart';
import 'package:food_delivery/shared/components/custom_button.dart';
import 'package:food_delivery/shared/components/custom_text_form_field.dart';
import 'package:food_delivery/shared/components/custom_text_form_password.dart';
import 'package:food_delivery/shared/helper/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/background_login.png'),
              ),
            ),
            Positioned(
              bottom: 355.h,
              left: 20.w,
              right: 20.w,
              child: CustomPhoneTextFormField(
                hint: ' Your Phone Number',
                type: TextInputType.phone,
                width: 390.w,
                validate: (value){
                  if(value!.isEmpty){
                    return 'number must not be empty';
                  }
                },
              ),
            ),
            Positioned(
              bottom: 275.h,
              left: 20.w,
              right: 20.w,
              child: CustomTextFormFieldPassword(
                hint: 'Password',
                type: TextInputType.visiblePassword,
                width: 380.w,
                height: 90.h,
                prefixIcon: Icons.lock_outline,
                suffixIcon: Icons.visibility_off,
              ),
            ),
            Positioned(
              bottom: 165.h,
              left: 20.w,
              right: 20.w,
              child: SizedBox(
                  width: 330.w,
                  height: 70.h,
                  child: CustomButton(
                    onPressed: () {
                      navigateTo(context, HomeLayoutScreen());
                    },
                    text: 'Login to account 😋',
                    color: Colors.black,
                    radius: 25.r,
                  )),
            ),
            Positioned(
              bottom: 81.h,
              left: 20.w,
              right: 20.w,
              child: SizedBox(
                  width: 330.w,
                  height: 70.h,
                  child: CustomButton(
                    onPressed: () {
                      navigateTo(context, OtpScreen());
                    },
                    text: 'Create new account',
                    color: opacityPrimaryColor,
                    radius: 25.r,
                  )),
            ),
            Positioned(
                bottom: 3.h,
                right: 20.w,
                left: 15.w,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forget password?',
                    style: TextStyle(color: Colors.white, fontSize: 16.0.sp),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
