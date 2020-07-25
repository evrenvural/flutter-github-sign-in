import 'package:flutter/material.dart';
import 'package:flutter_github_login_trying/core/github_sign_in.dart';

class LoginView extends StatefulWidget {
  LoginView({Key key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool errorMessageVisual = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildSignInButton(context),
            Visibility(
                visible: errorMessageVisual, child: Text("Giriş Başarısız"))
          ],
        ),
      ),
    );
  }

  RaisedButton buildSignInButton(BuildContext context) {
    return RaisedButton(
      child: Text("Sign In"),
      onPressed: () {
        gitHubSignIn(context).then((value) {
          // Sign in success
          if (value) {
            Navigator.pushNamed(context, '/success');
          } else {
            // Sign in failed
            setState(() {
              errorMessageVisual = true;
            });
          }
        }).catchError((onError) {
          print(onError);
        });
      },
    );
  }
}
