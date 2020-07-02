import 'package:drumsapp/src/pages/welcome_page.dart';
import 'package:drumsapp/src/utils/colors_utils.dart';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';

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
    );
  }
}
