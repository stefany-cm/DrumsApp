import 'package:drumsapp/src/pages/welcome_menu_page.dart';
import 'package:drumsapp/src/utils/colors_utils.dart';
import 'package:drumsapp/src/widgets/buttons.dart';
import 'package:drumsapp/src/widgets/logo.dart';
import 'package:drumsapp/src/widgets/titles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomePage extends StatelessWidget {
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
        decoration: BoxDecoration(
          gradient: blueLinearGColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            title1('¡Bienvenido!', TextAlign.center),
            title2('Aprenderás a tocar la batería desde tu casa', TextAlign.center),
            logo(context),
            boderButton('Comenzar', Colors.white, Colors.black, blue2Color, context, WelcomeMenuPage()),
          ],
        ),
      ),
    );
  }
}
