import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/layout/cubit/cubit.dart';
import 'package:food_delivery/layout/cubit/state.dart';
import 'package:food_delivery/shared/components/custom_text.dart';
import 'package:food_delivery/shared/helper/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeLayoutScreen extends StatelessWidget {
  const HomeLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit,HomeCubitState>(
      listener: (context , state){},
      builder: (context , state){
        var cubit = HomeCubit.get(context);
        return SafeArea(
          child: Scaffold(
            body: cubit.bottomScreens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
            onTap: (index) => cubit.changeBottom(index),
                currentIndex: cubit.currentIndex,
                items:  [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
                  BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: 'Favorite', ),
                  BottomNavigationBarItem(
                      icon: SizedBox(
                    width: 40.w,
                    height: 45.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children:  [
                        Icon(Icons.shopping_bag_outlined),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.w),
                            child: CircleAvatar(
                              radius: 10.r,
                              child: CustomText(
                                text: '0',
                                color: Colors.white,
                                fontSize: 12,
                                height: 1.3,
                                fontWeight: FontWeight.bold,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), label: 'Cart' ),
                  BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Settings' )
                ]
            ),
          ),
        );
      },
    );
  }
}
