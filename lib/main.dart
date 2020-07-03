import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'package:drumsapp/src/pages/welcome_page.dart';
import 'package:drumsapp/src/pages/login.page.dart';
import 'package:drumsapp/src/pages/login_page.dart';
import 'package:drumsapp/src/pages/sign_up_page.dart';
import 'package:drumsapp/src/pages/welcome_menu_page.dart';

import 'package:drumsapp/src/utils/colors_utils.dart';

void main() {
  // Transparente barra de estado
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
        primaryColor: blue2Color,
      ),
      title: 'DrumsApp',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
      // initialRoute: 'home',
      // routes: {
      //   'login': (BuildContext context) => LoginPage(),
      //   'login2': (BuildContext context) => LoginPage2(),
      //   'home': (BuildContext context) => WelcomePage(),
      //   'homeMenu': (BuildContext context) => WelcomeMenuPage(),
      //   'signUp': (BuildContext context) => SignUpPage(),
      // },
    );
  }
}
