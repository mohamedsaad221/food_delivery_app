import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/shared/components/components.dart';
import 'package:food_delivery/shared/components/custom_button.dart';
import 'package:food_delivery/shared/components/custom_text.dart';
import 'package:food_delivery/shared/helper/constants.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'My Orders 😋',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 800.h,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => buildCartItem(),
                  itemCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                ),
              ), // Listview
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                width: 372.w,
                height: 60.h,
                child: CustomButton(
                  onPressed: () {},
                  text: 'Apply Coupon 🤑',
                  color: opacityPrimaryColor,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              myDivider(),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(26.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Item total',
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                          CustomText(
                            text: '\$ 14.95',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Delivery fees',
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                          CustomText(
                            text: '\$ 2.25',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Tax',
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                          CustomText(
                            text: '\$ 2.95',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Total :',
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                          CustomText(
                            text: '\$ 20.15',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ],
                      ),
                      Spacer(),
                      SizedBox(
                        width: 372.w,
                          height: 70.h,
                          child: CustomButton(
                        onPressed: () {},
                        text: 'Confirm order 😋',
                            color: Colors.black,
                            fontSize: 22,
                      ),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCartItem() => Padding(
        padding: EdgeInsets.all(15.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              width: 90.w,
              height: 74.h,
              image: AssetImage('assets/images/chicken_Burger.png'),
            ),
            Expanded(
              child: SizedBox(
                // height: 90.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomText(
                      text: 'Chicken Burger',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomText(
                      text: '\$ 4.25',
                      fontSize: 16,
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      alignment: Alignment.centerLeft,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 100.w,
              height: 40.h,
              padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 4.w),
              decoration: BoxDecoration(
                color: opacityPrimaryColor,
                borderRadius: BorderRadius.circular(35.r),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){},
                      child: CircleAvatar(
                          radius: 32.r,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.add,
                            size: 16.r,
                            color: primaryColor,
                          )),
                    ),
                  ),
                  Expanded(
                    child: CustomText(
                      text: '1',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      alignment: Alignment.center,
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){},
                      child: CircleAvatar(
                          radius: 32.r,
                          child: Icon(
                            Icons.add,
                            size: 16.r,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
