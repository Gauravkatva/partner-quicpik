import 'package:flutter/material.dart';
import 'package:partner_quicpik/components/app_clippers.dart';
import 'package:partner_quicpik/components/button.dart';
import 'package:partner_quicpik/components/phone_text_field.dart';
import 'package:partner_quicpik/screens/verification.dart';
import 'package:partner_quicpik/services/app_provider.dart';
import 'package:partner_quicpik/services/auth.dart';
import 'package:partner_quicpik/utils/app_utils.dart';
import 'package:partner_quicpik/utils/routes.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  
  final phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _appProvider = Provider.of<QuicPikProvider>(context, listen: false);
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
                  child: Image.asset("assets/sign_up.png"),
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
                      onPressed: () async {
                        // await _appProvider.authMethods.verifyUserPhoneNumber(
                        //     "+91" + phoneNumberController.text, context);
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
