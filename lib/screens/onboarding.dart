import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:partner_quicpik/components/button.dart';
import 'package:partner_quicpik/models/user.dart';
import 'package:partner_quicpik/models/user_data.dart';
import 'package:partner_quicpik/utils/app_utils.dart';
import 'package:partner_quicpik/utils/routes.dart';
import 'package:http/http.dart' as http;

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeData(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "QuicPik",
              style: GoogleFonts.fredokaOne(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 40,
              ),
              child: SvgPicture.asset("assets/onboarding.svg"),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 60,
                bottom: 30,
              ),
              child: Text(
                "Please sign in or sign up to continue",
                style: themeData(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            ),
            AppButton(
              buttonTitle: "Sign In",
              onPressed: () async {
                openScreen(context, Routes.signinRoute);
              },
              buttonColor: Colors.white,
              titleColor: themeData(context).primaryColor,
            ),
            AppButton(
              buttonTitle: "Sign Up",
              onPressed: () async {
                openScreen(context, Routes.signupRoute);
              },
              buttonColor: Colors.white,
              titleColor: themeData(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
