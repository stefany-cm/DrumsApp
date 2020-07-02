import 'package:drumsapp/src/pages/login_page.dart';
import 'package:drumsapp/src/pages/sign_up_page.dart';
import 'package:drumsapp/src/utils/colors_utils.dart';
import 'package:drumsapp/src/widgets/buttons.dart';
import 'package:drumsapp/src/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomeMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            logoContainerRounded(context),
            new SizedBox(height: MediaQuery.of(context).size.height*0.15),
            boderButton('Registrarse', null, Colors.black, blue2Color, context, SignUpPage()),
            new SizedBox(height: MediaQuery.of(context).size.height*0.02),
            normalButton('Iniciar sesión', blue2Color, Colors.black, context, LoginPage()),
          ],
        ),
      ),
    );
  }
}
