import 'package:disfruta/pages/cart_page.dart';
import 'package:disfruta/pages/detail_page.dart';
import 'package:disfruta/pages/home_page.dart';
import 'package:disfruta/pages/login_page.dart';
import 'package:disfruta/pages/profile_page.dart';
import 'package:disfruta/pages/register_page.dart';
import 'package:disfruta/pages/splash_page.dart';
import 'package:disfruta/pages/wish_list_page.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'cart': (_) => CartPage(),
  'detail': (_) => DetailPage(),
  'home': (_) => HomePage(),
  'profile': (_) => ProfilePage(),
  'splash': (_) => SplashPage(),
  'wish_list': (_) => WishListPage(),
};
