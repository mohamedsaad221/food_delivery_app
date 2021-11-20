import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/modules/cart/cart_screen.dart';
import 'package:food_delivery/shared/components/components.dart';
import 'package:food_delivery/shared/components/custom_text.dart';
import 'package:food_delivery/shared/helper/constants.dart';

class TabBarViewPage extends StatelessWidget {
  final String? mainName;
  final String? secondName;
  final double? price;
  final String? productImage;

  const TabBarViewPage({
    Key? key,
    required this.mainName,
    required this.secondName,
    required this.price,
    required this.productImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => builtPopularItem(context),
            separatorBuilder: (context, index) => SizedBox(
                  width: 10.w,
                ),
            itemCount: 10));
  }

  Widget builtPopularItem(context) => Container(
        width: 191.w,
        height: 254.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25.r)),
            border: Border.all(color: opacityPrimaryColor)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(productImage!),
                width: 140.w,
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomText(
                text: mainName,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomText(
                text: secondName,
                fontSize: 14,
                fontWeight: FontWeight.w300,
                alignment: Alignment.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(
                    text: '\$ $price',
                    fontSize: 16,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  IconButton(
                      onPressed: () {
                        // add to card
                      },
                      icon: CircleAvatar(
                          radius: 20.r,
                          backgroundColor: primaryColor,
                          child: Icon(
                            Icons.add,
                            size: 24.sp,
                            color: Colors.white,
                          )))
                ],
              ),
            ],
          ),
        ),
      );
}
