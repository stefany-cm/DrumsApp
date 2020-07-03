import 'package:drumsapp/src/pages/sign_up_page.dart';
import 'package:drumsapp/src/pages/welcome_page.dart';
import 'package:drumsapp/src/utils/colors_utils.dart';
import 'package:drumsapp/src/widgets/buttons.dart';
import 'package:drumsapp/src/widgets/inputs.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  FormLogin({Key key}) : super(key: key);

  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  TextEditingController passwordControler = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _formLogin = GlobalKey<FormState>();

    return Expanded(
          child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          decoration: new BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.white),
          child: Form(
            key: _formLogin,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 15.0),
                inputMail(false),
                SizedBox(height: 15.0),
                inputPassword(passwordControler),
                Container(alignment: Alignment.centerRight, child: textButton('¿Contraseña olvidada?', blue2Color, context, SignUpPage())),
                SizedBox(height: 40.0),
                formButton('Iniciar sesión', _formLogin, blue2Color, Colors.black, context, WelcomePage()),
                SizedBox(height: 85.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('¿Aún no tiene una cuenta?'),
                    textButton('Registrate', blue2Color, context, SignUpPage()),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
