import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/modules/login/login_screen.dart';
import 'package:food_delivery/shared/components/components.dart';
import 'package:food_delivery/shared/components/custom_button.dart';
import 'package:food_delivery/shared/components/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 0.0.h,
              child: Image(
                image: AssetImage('assets/images/bubbles.png'),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Image(
                    image: AssetImage('assets/images/1.png'),
                  ),
                  Image(
                    image: AssetImage('assets/images/2.png'),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 140.0.h,
              left: 35.0.w,
              right: 35.0.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Image(
                    image: AssetImage('assets/images/3.png'),
                  ),
                  Image(
                    image: AssetImage('assets/images/4.png'),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image(
                fit: BoxFit.cover,
                width: 634.w,
                height: 423.h,
                image: AssetImage('assets/images/male.png'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  right: 20.0.w,
                  left: 20.0.w,
                  bottom: 20.0.h
                ),
                child: Container(
                  height:300.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0.r)),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 8.0.h,
                      ),
                      Image(
                        width: 60.w,
                        image: AssetImage('assets/images/logo.png'),
                      ),
                      SizedBox(
                        height: 5.0.h,
                      ),
                      CustomText(
                        text: 'Feeling Hungry ?',
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        //height: 1.3.h,
                        alignment: Alignment.center,
                      ),
                      SizedBox(
                        height: 5.0.h,
                      ),
                      CustomText(
                        text: 'Let’s order right now',
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        //height: 1.3.h,
                        alignment: Alignment.center,
                      ),
                      SizedBox(
                        height: 5.0.h,
                      ),
                      CustomText(
                        text:
                            'The fastest delivery service in the',
                        fontWeight: FontWeight.w300,
                        fontSize: 18.0,
                        //height: 1.3.h,
                        alignment: Alignment.center,
                      ),
                      SizedBox(
                        height: 5.0.h,
                      ),
                      CustomText(
                        text:
                        'town, start ordering now',
                        fontWeight: FontWeight.w300,
                        fontSize: 18.0,
                        //height: 1.2.h,
                        alignment: Alignment.center,
                      ),
                      SizedBox(
                        height: 5.0.h,
                      ),
                      SizedBox(
                        height: 60.h,
                        width: 240.w,
                        child: CustomButton(
                          onPressed: () {
                            navigateAndFinish(context, LoginScreen());
                          },
                          text: 'Let\'s Order 😋',
                          textColor: Colors.white,
                          radius: 30.r,
                        ),
                      ),
                      SizedBox(
                        height: 8.0.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
