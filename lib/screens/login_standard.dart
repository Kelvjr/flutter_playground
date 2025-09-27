import 'package:flutter/material.dart';
import 'package:flutter_playground/themes/spacing.dart';

class LoginStandard extends StatelessWidget {
  const LoginStandard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffefefef),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              StandardLoginSpacing.top,

              // logo
              Image.asset('assets/images/logos/586logo.png', width: 90),

              StandardLoginSpacing.top,

              //welcome back text
              Text('Welcome Back!'),
              Text('Sign into your account'),

              //email field

              //password field

              //remember me & forgot password

              // login button

              // or continue with

              // other logins

              // view more login options

              //don't have an account? signup.
            ],
          ),
        ),
      ),
    );
  }
}
