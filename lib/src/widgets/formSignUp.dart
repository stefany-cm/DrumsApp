import 'package:drumsapp/src/pages/login_page.dart';
import 'package:drumsapp/src/utils/colors_utils.dart';
import 'package:drumsapp/src/widgets/inputs.dart';
import 'package:drumsapp/src/widgets/buttons.dart';
import 'package:flutter/material.dart';

class FormSignUp extends StatefulWidget {
  @override
  _FormSignUpState createState() => _FormSignUpState();
}

class _FormSignUpState extends State<FormSignUp> {
  final TextEditingController passwordControler = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _formRegistro = GlobalKey<FormState>();
    bool _checkBoxValue = false;
    return Form(
      key: _formRegistro,
      child: Expanded(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)),
              color: Colors.white),
            child: Column(
              children: <Widget>[
                inputMail(false),
                SizedBox(height: 15.0),
                inputPassword(passwordControler),
                SizedBox(height: 15.0),
                inputConfirmationPassword(passwordControler),
                SizedBox(height: 20.0),
                CheckboxListTile(
                    //No se activa
                  title: Text('Acepto términos y condiciones'),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: blue2Color,
                  value: _checkBoxValue,
                  onChanged: (bool value) { setState(() => _checkBoxValue = value); }
                ),
                SizedBox(height: 35.0),
                formButton('Registrarse', _formRegistro, blue2Color,
                    Colors.black, context, LoginPage()),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('¿Ya tiene una cuenta?'),
                    textButton(
                        'Iniciar sesión', blue2Color, context, LoginPage()),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
