import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/layout/cubit/cubit.dart';
import 'package:food_delivery/layout/cubit/state.dart';
import 'package:food_delivery/modules/tab_view_pages/tab_bar_view_page.dart';
import 'package:food_delivery/shared/components/custom_text.dart';
import 'package:food_delivery/shared/components/custom_text_form_serach.dart';
import 'package:food_delivery/shared/helper/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeCubitState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return SafeArea(
            child: DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: SizedBox(
                height: 1200.h,
                child: Column(
                  children: [
                    SizedBox(
                      height: 250.0.h,
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          Align(
                            alignment: AlignmentDirectional.topCenter,
                            child: Container(
                              decoration: BoxDecoration(
                                color: opacityPrimaryColor,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25.r),
                                  bottomRight: Radius.circular(25.r),
                                ),
                              ),
                              width: double.infinity,
                              height: 220.h,
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 12.0.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Image(
                                            image: AssetImage(
                                                'assets/icons/menu_icon.png'),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5.h),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30.r))),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton<String>(
                                              value: cubit.value,
                                              alignment: Alignment.center,
                                              autofocus: true,
                                              items: cubit.items
                                                  .map(buildMenuItem)
                                                  .toList(),
                                              onChanged: (String? value) =>
                                                  cubit.onChangeDropDown(value),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Image(
                                            image: AssetImage(
                                                'assets/icons/notification_icon.png'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  CustomText(
                                    alignment: Alignment.center,
                                    text: 'What would you like to',
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w900,
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  CustomText(
                                    alignment: Alignment.center,
                                    text: 'eat today 😋',
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomTextFormFieldSearch(
                            suffixIcon: Icons.tune,
                            prefixIcon: Icons.search,
                            height: 70.h,
                            width: 350.w,
                            hint: 'Search food',
                            type: TextInputType.text,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          CustomText(
                            text: 'Categories',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          Spacer(),
                          Row(
                            children: [
                              CustomText(
                                text: 'See all',
                                fontSize: 14,
                                color: primaryColor,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 3.0.h),
                                child: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: primaryColor,
                                  size: 14.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TabBar(
                          unselectedLabelColor: Colors.black,
                          isScrollable: true,
                          indicatorSize: TabBarIndicatorSize.tab,
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          // labelPadding: EdgeInsets.symmetric(horizontal: 20.w),
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          unselectedLabelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.sp,
                          ),
                          indicator: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(25.r),
                          ),

                          // backgroundColor: primaryColor,
                          // labelStyle: TextStyle(
                          //   color: Colors.black,
                          //   fontSize: 20.sp,
                          // ),
                          // unselectedLabelStyle:TextStyle(
                          //   color: Colors.white,
                          //   fontSize: 20.sp,
                          // ),
                          // radius: 20.r,
                          // contentPadding: EdgeInsets.symmetric(
                          //   horizontal: 10.w
                          // ),
                          // unselectedBackgroundColor: opacityPrimaryColor,
                          tabs: [
                            Tab(
                              child: buildTabBarItem(
                                  tabName: 'Burger',
                                  imageName: 'assets/icons/burger.png'),
                            ),
                            Tab(
                              child: buildTabBarItem(
                                  tabName: 'Pizza',
                                  imageName: 'assets/icons/pizza.png'),
                            ),
                            Tab(
                              child: buildTabBarItem(
                                  tabName: 'Healthy',
                                  imageName: 'assets/icons/healthy.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Popular now 🔥',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          SizedBox(
                            height: 254.h,
                            child: TabBarView(
                              children: const [
                                TabBarViewPage(
                                  mainName: 'Beef Burger',
                                  secondName: 'Burger King',
                                  price: 4.25,
                                  productImage: 'assets/images/chicken_Burger.png',
                                ),
                                TabBarViewPage(
                                  mainName: 'SeaFood Pizza',
                                  secondName: 'Pizza Medium',
                                  price: 14.99,
                                  productImage: 'assets/images/chicken_Burger.png',
                                ),
                                TabBarViewPage(
                                  mainName: 'Salad',
                                  secondName: 'Caesar salad',
                                  price: 8.99,
                                  productImage: 'assets/images/chicken_Burger.png',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30.h,),
                          CustomText(
                            text: 'Offer & Deal 🤩',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(height: 15.h,),
                          SizedBox(
                            height: 254.h,
                            child: TabBarViewPage(
                              mainName: 'Beef Burger',
                              secondName: 'Burger King',
                              price: 4.25,
                              productImage: 'assets/images/chicken_Burger.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
      },
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Padding(
          padding: EdgeInsets.only(top: 4.0.h),
          child: CustomText(
            text: item,
            fontSize: 22,
            alignment: Alignment.center,
          ),
        ),
      );

  Widget buildTabBarItem(
          {required String tabName, required String imageName}) =>
      Container(
        padding: EdgeInsets.all(15.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          // color: opacityPrimaryColor
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 8.h),
              child: Image(
                image: AssetImage(imageName),
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            Text(
              tabName,
            ),
          ],
        ),
      );
}
