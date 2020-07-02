import 'package:flutter/material.dart';

Widget normalButton(String text, Color colorB, Color colorT,
    BuildContext context, dynamic route) {
  return FlatButton(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      child: Text(text, style: TextStyle(fontSize: 20, color: colorT)),
      color: colorB,
      splashColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onPressed: () {
        Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => route,
            ));
      });
}

//Boton con bordes
Widget boderButton(String text, Color colorB, Color colorT, Color colorBr,
    BuildContext context, dynamic route) {
  return FlatButton(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      child: Text(text, style: TextStyle(fontSize: 20, color: colorT)),
      color: colorB,
      splashColor: colorBr,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: colorBr, width: 2, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(20)),
      onPressed: () {
        Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => route,
            ));
      });
}

Widget textButton(
    String text, Color colorT, BuildContext context, dynamic route) {
  return FlatButton(
    splashColor: Colors.white,
    textColor: colorT,
    child: Text(text, style: TextStyle(fontSize: 15)),
    onPressed: () {
      Navigator.push(
          context,
          new MaterialPageRoute(
            builder: (context) => route,
          ));
    },
  );
}

Widget backIconButton(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(top: 25.0),
    alignment: Alignment.bottomLeft,
    child: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        }),
  );
}

Widget formButton(String text, GlobalKey<FormState> _formId, Color colorB,
    Color colorT, BuildContext context, dynamic route) {
  return FlatButton(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      child: Text(text, style: TextStyle(fontSize: 20, color: colorT)),
      color: colorB,
      splashColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onPressed: () {
        if (_formId.currentState.validate()) {
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text('Procesando datos')));
          Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (context) => route,
              ));
        }
      });
}
