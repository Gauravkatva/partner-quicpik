import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:partner_quicpik/components/button.dart';
import 'package:partner_quicpik/utils/routes.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
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
              child: Image.asset("assets/onboarding.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 60,
                bottom: 30,
              ),
              child: Text(
                "Please sign in or sign up to continue",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            ),
            AppButton(
              buttonTitle: "Sign In",
              onPressed: () {},
              buttonColor: Colors.white,
              titleColor: Theme.of(context).primaryColor,
            ),
            AppButton(
              buttonTitle: "Sign Up",
              onPressed: () {
                Navigator.pushNamed(context, Routes.signupRoute);
              },
              buttonColor: Colors.white,
              titleColor: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
