import 'package:flutter/material.dart';

TextFormField inputMail(bool focus) {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: const InputDecoration(
      icon: Icon(Icons.email),
      labelText: 'Correo electrónico',
    ),
    validator: mailValidation,
    autofocus: focus,
  );
}

TextFormField inputPassword(TextEditingController passwordControler) {
  return TextFormField(
    obscureText: false,
    controller: passwordControler,
    decoration: const InputDecoration(
      icon: Icon(Icons.lock),
      //suffixIcon: Icon(Icons.visibility_off), //Cambiar a statefulwidget
      labelText: 'Contraseña',
    ),
    validator: passwordValidation,
  );
}

TextFormField inputConfirmationPassword(
    TextEditingController passwordControler) {
  return TextFormField(
    obscureText: true,
    decoration: const InputDecoration(
      icon: Icon(Icons.check_circle),
      labelText: 'Confirmar contraseña',
    ),
    validator: (value) {
      if (value.isEmpty) {
        return 'Debe confirmar la contraseña';
      } else if (value != passwordControler.text) {
        return 'Las contraseñas no coinciden';
      }
      return null;
    },
  );
}

//Validations

String mailValidation(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (value.isEmpty) {
    return 'El correo electrónico es obligatorio';
  } else if (!regex.hasMatch(value)) {
    return 'Ingrese un correo electrónico válido';
  } else
    return null;
}

String passwordValidation(String value) {
  if (value.isEmpty) {
    return 'La contraseña es obligatoria';
  } else if (value.length < 8) {
    return 'La contraseña debe tener una extensión mínima de 8';
  }
  return null;
}
