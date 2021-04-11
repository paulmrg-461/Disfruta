import 'package:disfruta/widgets/custom_button.dart';
import 'package:disfruta/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.close),
                          iconSize: 26,
                          color: Colors.black38,
                          onPressed: () => Navigator.pop(context)),
                      Text(
                        'Formulario de registro',
                        style: TextStyle(
                            color: Color(0xff6D05E8),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 16, right: 16),
                    padding: EdgeInsets.only(
                        top: 12, left: 12, right: 12, bottom: 4),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              blurRadius: 25,
                              offset: Offset(1, 0))
                        ],
                        borderRadius: BorderRadius.circular(24)),
                    child: _Form()),
                Container(
                  margin: EdgeInsets.only(top: 22),
                  child: CustomButton(
                      onPressed: () => print('Button pressed'),
                      textButton: 'Registrarme'),
                )
              ],
            ),
          ),
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
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController birthdayController = TextEditingController();
  final double borderRadius = 12;
  final bool borderEnabled = true;
  int _radioValue = 0;
  String gender = "Hombre";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInput(
          textController: nameController,
          hintText: 'Nombre',
          icon: Icons.person_outlined,
          textInputType: TextInputType.name,
          textCapitalization: TextCapitalization.words,
          inputColor: Color(0xffF2F2F2),
          paddingBottom: 12,
          borderRadius: borderRadius,
          borderEnabled: borderEnabled,
        ),
        CustomInput(
            textController: lastNameController,
            hintText: 'Apellido',
            icon: Icons.person_outlined,
            textInputType: TextInputType.name,
            textCapitalization: TextCapitalization.words,
            inputColor: Color(0xffF2F2F2),
            paddingBottom: 12,
            borderRadius: borderRadius,
            borderEnabled: borderEnabled),
        CustomInput(
            textController: emailController,
            hintText: 'Correo electrónico',
            icon: Icons.mail_outline,
            textInputType: TextInputType.emailAddress,
            inputColor: Color(0xffF2F2F2),
            paddingBottom: 12,
            borderRadius: borderRadius,
            borderEnabled: borderEnabled),
        CustomInput(
            textController: passwordController,
            hintText: 'Contraseña',
            icon: Icons.lock_outline,
            textInputType: TextInputType.text,
            suffixIcon: Icons.visibility,
            obscureText: true,
            inputColor: Color(0xffF2F2F2),
            paddingBottom: 12,
            borderRadius: borderRadius,
            borderEnabled: borderEnabled),
        CustomInput(
            textController: addressController,
            hintText: 'Dirección',
            icon: Icons.location_on_outlined,
            textInputType: TextInputType.streetAddress,
            textCapitalization: TextCapitalization.words,
            inputColor: Color(0xffF2F2F2),
            paddingBottom: 12,
            borderRadius: borderRadius,
            borderEnabled: borderEnabled),
        CustomInput(
            textController: phoneController,
            hintText: 'Teléfono o celular',
            icon: Icons.phone_outlined,
            textInputType: TextInputType.phone,
            textCapitalization: TextCapitalization.words,
            inputColor: Color(0xffF2F2F2),
            paddingBottom: 12,
            borderRadius: borderRadius,
            borderEnabled: borderEnabled),
        CustomInput(
            textController: birthdayController,
            hintText: 'Fecha de cumpleaños',
            icon: Icons.cake_outlined,
            textInputType: TextInputType.datetime,
            textCapitalization: TextCapitalization.words,
            inputColor: Color(0xffF2F2F2),
            paddingBottom: 18,
            borderRadius: borderRadius,
            borderEnabled: borderEnabled),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Hombre'),
            Radio(
                value: 0,
                groupValue: _radioValue,
                onChanged: _handleRadioValueChange),
            Text('Mujer'),
            Radio(
                value: 1,
                groupValue: _radioValue,
                onChanged: _handleRadioValueChange),
            Text('Otro'),
            Radio(
                value: 2,
                groupValue: _radioValue,
                onChanged: _handleRadioValueChange),
          ],
        )
      ],
    );
  }

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          gender = "Hombre";
          break;
        case 1:
          gender = "Mujer";
          break;
        case 2:
          gender = "Otro";
          break;
        default:
          gender = "Hombre";
      }
    });
  }
}
