import 'package:flutter/material.dart';
import 'package:drumsapp/src/Bloc/provider.dart';

// import 'package:drumsapp/src/widgets/button.dart';
// // import 'package:drumsapp/src/widget/first.dart';
// import 'package:drumsapp/src/widgets/forgot.dart';
// import 'package:drumsapp/src/widgets/inputEmail.dart';
// import 'package:drumsapp/src/widgets/password.dart';
// import 'package:drumsapp/src/widgets/textLogin.dart';
// import 'package:login_minimalist/widget/verticalText.dart';

class LoginPage2 extends StatefulWidget {
  @override
  _LoginPageState2 createState() => _LoginPageState2();
}

class _LoginPageState2 extends State<LoginPage2> {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blueGrey, Colors.lightBlueAccent]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(children: <Widget>[
                  // VerticalText(),
                  // TextLogin(),
                ]),
                // InputEmail(),
                _crearEmail2(bloc),
                // PasswordInput(),
                _crearPassword2(bloc),
                // ButtonLogin(),
                _crearBoton2(bloc),
                // FirstTime(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearEmail2(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.emailStream,
      // initialData: initialData ,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Padding(
          padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Colors.lightBlueAccent,
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    color: Colors.white70,
                  ),
                  counterText: snapshot.data,
                  errorText: snapshot.error),
              onChanged: bloc.changeEmail,
            ),
          ),
        );
      },
    );
  }

  Widget _crearPassword2(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.passwordStream,
      // initialData: initialData ,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Padding(
          padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Colors.white70,
                  ),
                  counterText: snapshot.data,
                  errorText: snapshot.error),
              onChanged: bloc.changePassword,
            ),
          ),
        );
      },
    );
  }

  Widget _crearBoton2(LoginBloc bloc) {
    return StreamBuilder(
        stream: bloc.formValidStream,
        // initialData: initialData ,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Padding(
            padding: const EdgeInsets.only(top: 40, right: 50, left: 200),
            child: Container(
              alignment: Alignment.bottomRight,
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue[300],
                    blurRadius: 10.0, // has the effect of softening the shadow
                    spreadRadius: 1.0, // has the effect of extending the shadow
                    offset: Offset(
                      5.0, // horizontal, move right 10
                      5.0, // vertical, move down 10
                    ),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: FlatButton(
                onPressed:
                    snapshot.hasData ? () => _login1(bloc, context) : null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'OK',
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.lightBlueAccent,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  _login1(LoginBloc bloc, BuildContext context) {
    print('================');
    print('Email: ${bloc.email}');

    print('Password: ${bloc.password}');
    print('============');

    Navigator.pushNamed(context, 'home');
  }
}
