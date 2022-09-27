import 'package:change_job/ui/screens/login/login_screen.dart';
import 'package:change_job/ui/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

import 'package:change_job/ui/screens/loader/loader_screen.dart';
import 'package:change_job/ui/screens/auth/auth_screen.dart';

class ScreenFactory {
  Widget makeLoader() {
    return const LoaderScreen();
  }

  Widget makeAuth() {
    return const AuthScreen();
  }

  Widget makeLogin() {
    return const LoginScreen();
  }

  Widget makeSignUp() {
    return const SignUpScreen();
  }
}
