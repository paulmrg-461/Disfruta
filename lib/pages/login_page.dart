import 'package:disfruta/widgets/custom_button.dart';
import 'package:disfruta/widgets/custom_headers.dart';
import 'package:disfruta/widgets/custom_input.dart';
import 'package:disfruta/widgets/labels.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
              height: MediaQuery.of(context).size.height * 0.95,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(1.6, 1.4),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GradientWaveHeader(
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                      _Form(),
                      Labels(
                          route: 'register',
                          actionText: 'Regístrate',
                          text: '¿Eres nuevo?'),
                      Text(
                        'Terms and conditions',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w200),
                      )
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({
    Key key,
  }) : super(key: key);

  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CustomInput(
            textController: emailController,
            hintText: 'Correo electrónico',
            icon: Icons.mail_outline,
            textInputType: TextInputType.emailAddress,
          ),
          CustomInput(
            textController: passwordController,
            hintText: 'Contraseña',
            icon: Icons.lock_outline,
            textInputType: TextInputType.text,
            obscureText: true,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: CustomButton(
                onPressed: () => print('Login'), textButton: 'Iniciar sesión'),
          )
        ],
      ),
    );
  }
}
