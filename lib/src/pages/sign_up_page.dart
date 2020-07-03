import 'package:drumsapp/src/utils/colors_utils.dart';
import 'package:drumsapp/src/widgets/buttons.dart';
import 'package:drumsapp/src/widgets/customAppBar.dart';
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
            customAppBar('Registro', context),
            FormSignUp(),
          ],
        ),
      )),
    );
  }
}
