import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:partner_quicpik/components/app_clippers.dart';
import 'package:partner_quicpik/components/button.dart';
import 'package:partner_quicpik/components/phone_text_field.dart';
import 'package:partner_quicpik/utils/app_utils.dart';
import 'package:partner_quicpik/utils/routes.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);
  final phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: themeData(context).primaryColor),
      ),
      backgroundColor: themeData(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: screenSize(context).height / 2,
                  width: screenSize(context).width,
                ),
                ClipPath(
                  clipper: OvalClipper(),
                  child: Container(
                    height: screenSize(context).height / 2.5,
                    width: screenSize(context).width,
                    color: Colors.white,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 175,
                            child: Text(
                              "Welcome Back",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                    color: themeData(context).primaryColor,
                                  ),
                            ),
                          ),
                          Text(
                            "Please Sign in to continue",
                            style: themeData(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                  color: themeData(context).primaryColor,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: screenSize(context).height / 9,
                  left: screenSize(context).width - 230,
                  child: SvgPicture.asset("assets/sign_in.svg"),
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
                    "Sign In with OTP",
                    style: themeData(context).textTheme.headline6!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  PhoneNumberTextField(
                    textEditingController: phoneNumberController,
                    hintText: "Phone Number",
                    prefixIcon: Icon(Icons.phone),
                    suffixIcon: Icon(Icons.cancel),
                    textInputType: TextInputType.phone,
                  ),
                  AppButton(
                      buttonTitle: "Sign In",
                      onPressed: () {
                        openScreen(context, Routes.verificationRoute);
                      },
                      buttonColor: Colors.white,
                      titleColor: themeData(context).primaryColor),
                  TextButton(
                    onPressed: () {
                      openScreen(context, Routes.signupRoute);
                    },
                    child: Text(
                      "Don't have an accoun? Sign Up",
                      style: themeData(context).textTheme.bodyText1!.copyWith(
                            color: Colors.white,
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
