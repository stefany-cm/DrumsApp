import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:drumsapp/src/Bloc/validators.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc with Validatos {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  //Recupera los datos del Stream

  Stream<String> get emailStream =>
      _emailController.stream.transform(validarEmail);
  Stream<String> get passwordStream =>
      _passwordController.stream.transform(validarPasword);

  Stream<bool> get formValidStream =>
      Observable.combineLatest2(emailStream, passwordStream, (e, p) => true);

  //insertar valores al stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

//Obtener el ultimo valor ingresado a los streams
  String get email => _emailController.value;
  String get password => _passwordController.value;

  dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}
