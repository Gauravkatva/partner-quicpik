import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:partner_quicpik/components/app_clippers.dart';
import 'package:partner_quicpik/components/button.dart';
import 'package:partner_quicpik/components/phone_text_field.dart';
import 'package:partner_quicpik/screens/verification.dart';
import 'package:partner_quicpik/utils/app_utils.dart';
import 'package:partner_quicpik/utils/routes.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  final phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: screenSize(context).height / 1.9,
                  width: screenSize(context).width,
                ),
                ClipPath(
                  clipper: OvalClipper(),
                  child: Container(
                    height: screenSize(context).height / 2.5,
                    width: screenSize(context).width,
                    color: themeData(context).primaryColor,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 150,
                            child: Text(
                              "Create Account",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                          Text(
                            "Please Sign up to continue",
                            style: themeData(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: screenSize(context).height / 5.5,
                  left: 0,
                  child: SvgPicture.asset("assets/sign_up.svg"),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Sign Up with OTP",
                    style: themeData(context).textTheme.headline6!.copyWith(
                          color: themeData(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  PhoneNumberTextField(
                    textEditingController: phoneNumberController,
                    hintText: "Phone Number",
                    prefixIcon: Icon(Icons.phone),
                    suffixIcon: Icon(Icons.cancel),
                    textInputType: TextInputType.phone,
                    shouldShowShadow: true,
                  ),
                  AppButton(
                      buttonTitle: "Sign Up",
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                Verification(fromSignup: true),
                          ),
                        );
                      },
                      buttonColor: themeData(context).primaryColor,
                      titleColor: Colors.white),
                  TextButton(
                    onPressed: () {
                      openScreen(context, Routes.signinRoute);
                    },
                    child: Text(
                      "Already have an account? Sign In",
                      style: themeData(context).textTheme.bodyText1!.copyWith(
                            color: themeData(context).primaryColor,
                          ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
