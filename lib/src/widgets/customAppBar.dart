import 'package:drumsapp/src/utils/colors_utils.dart';
import 'package:drumsapp/src/widgets/buttons.dart';
import 'package:drumsapp/src/widgets/titles.dart';
import 'package:flutter/material.dart';

import 'logo.dart';

Widget customAppBar(String text, BuildContext context) {
  return Container(
      decoration: BoxDecoration(gradient: blueLinearGColor),
      child: Column(
        children: <Widget>[
          backIconButton(context),
          logoSize(context, 1, 0.2),
          SizedBox(height: 15.0),
          title3(text, TextAlign.center),
          SizedBox(height: 15.0)
        ],
      ));
}
