import 'package:flutter/material.dart';
import 'package:market/features/Auth/presentation/pages/login/widget/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  LoginViewBody(),
    );
  }
}