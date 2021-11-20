
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/layout/cubit/state.dart';
import 'package:food_delivery/modules/cart/cart_screen.dart';
import 'package:food_delivery/modules/favorite/favorite_screen.dart';
import 'package:food_delivery/modules/product/product_screen.dart';
import 'package:food_delivery/shared/helper/constants.dart';

class HomeCubit extends Cubit<HomeCubitState> {
  HomeCubit() : super(InitState());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> bottomScreens = [
    ProductScreen(),
    FavoriteScreen(),
    CartScreen(),
    FavoriteScreen()
  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(ChangeNavBottomStateState());
  }

  final items = [
    'New York, USA',
    'Cairo, EGY',
    'Dubai, UAE'
    'Riyadh, KSA',
    'Doha, QATAR'
  ];

  String value = 'New York, USA';

  void onChangeDropDown(value) {
    this.value = value;
    emit(ChangeValueDropDownState());
  }

}