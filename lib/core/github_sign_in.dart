import 'package:flutter/material.dart';
import 'package:github_sign_in/github_sign_in.dart';

const String clientId = "39bc74545185810fdd88";
const String clientSecret = "5a50f79a9ac18675135376b67d6236f8d2c2ce1d";
const String redirectUrl =
    "https://github-example-1a675.firebaseapp.com/__/auth/handler";

Future<bool> gitHubSignIn(BuildContext context) async {
  final github = GitHubSignIn(
      clientId: clientId, clientSecret: clientSecret, redirectUrl: redirectUrl);
  
  var result = await github.signIn(context);

  return result.status == GitHubSignInResultStatus.ok;
}
