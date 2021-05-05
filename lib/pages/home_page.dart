import 'package:disfruta/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButton(
            onPressed: () => Navigator.pushReplacementNamed(context, 'detail'),
            textButton: 'Iniciar sesión'),
      ),
    );
  }
}
