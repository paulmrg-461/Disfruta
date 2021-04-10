import 'package:disfruta/routes/routes.dart';
import 'package:disfruta/themes/custom_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: customTheme,
        title: 'Disfruta',
        routes: appRoutes,
        initialRoute: 'login');
  }
}
