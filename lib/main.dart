import 'package:flutter/material.dart';
import 'package:partner_quicpik/screens/onboarding.dart';
import 'package:partner_quicpik/screens/sign_up.dart';
import 'package:partner_quicpik/utils/theme.dart';
import 'package:partner_quicpik/utils/routes.dart';
import 'package:partner_quicpik/utils/wrapper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Routes.signupRoute: (context) => SignUp(),
        Routes.wrapperRoute: (context) => Wrapper(),
        Routes.onboardingRoute: (context) => Onboarding(),
      },
      theme: AppTheme.lightTheme(context),
      home: Wrapper(),
    );
  }
}
