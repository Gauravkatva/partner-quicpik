import 'package:flutter/material.dart';
import 'package:partner_quicpik/screens/screens.dart';
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
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.signupRoute: (context) => SignUp(),
        Routes.wrapperRoute: (context) => Wrapper(),
        Routes.onboardingRoute: (context) => Onboarding(),
        Routes.signinRoute: (context) => SignIn(),
        Routes.verificationRoute: (context) => Verification(),
        Routes.carouselRoute: (context) => CarouselScreens(),
        Routes.personalDetailRoute: (context) => PersonalDetails(),
        Routes.shopDetailRoute: (context) => ShopDetails(),
      },
      theme: AppTheme.lightTheme(context),
      //home: SignUp(),
    );
  }
}
