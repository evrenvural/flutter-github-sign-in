import 'package:flutter/material.dart';

import 'package:flutter_github_login_trying/views/login_view.dart';
import 'package:flutter_github_login_trying/views/success_view.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: LoginView(),
      routes: {
        "/login": (context) => LoginView(),
        "/success": (context) => SuccessView(),
      },
    );
  }
}