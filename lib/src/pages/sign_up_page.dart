import 'package:drumsapp/src/utils/colors_utils.dart';
import 'package:drumsapp/src/widgets/buttons.dart';
import 'package:drumsapp/src/widgets/formSignUp.dart';
import 'package:drumsapp/src/widgets/logo.dart';
import 'package:drumsapp/src/widgets/titles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        color: blue2Color,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(gradient: blueLinearGColor),
                child: Column(
                  children: <Widget>[
                    backIconButton(context),
                    logoSize(context, 1, 0.2),
                    SizedBox(height: 15.0),
                    title3('Registro', TextAlign.center),
                    SizedBox(height: 15.0)
                  ],
                )),
            FormSignUp(),
          ],
        ),
      )),
    );
  }
}
