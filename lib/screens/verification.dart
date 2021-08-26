import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:partner_quicpik/components/app_clippers.dart';
import 'package:partner_quicpik/components/button.dart';
import 'package:partner_quicpik/components/otp_field.dart';
import 'package:partner_quicpik/utils/app_utils.dart';
import 'package:partner_quicpik/utils/routes.dart';

class Verification extends StatelessWidget {
  Verification({this.fromSignup = false, Key? key}) : super(key: key);
  final bool fromSignup;
  final FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: themeData(context).primaryColor,
        ),
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
                            margin: EdgeInsets.only(top: 30),
                            width: 210,
                            child: Text(
                              "Verification",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                    color: themeData(context).primaryColor,
                                  ),
                            ),
                          ),
                          Text(
                            "Please verify to continue",
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
                  top: screenSize(context).height / 6,
                  left: screenSize(context).width - 230,
                  child: SvgPicture.asset("assets/verify.svg"),
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
                  OTPVerification(
                    focusNode: focusNode,
                  ),
                  AppButton(
                      buttonTitle: "Verify",
                      onPressed: () async {
                        showSnackBar(context, "OTP Verified");
                        if (fromSignup) {
                          openScreen(context, Routes.personalDetailRoute);
                        } else {
                          openScreen(context, Routes.carouselRoute);
                        }
                      },
                      buttonColor: Colors.white,
                      titleColor: themeData(context).primaryColor),
                  TextButton(
                    onPressed: () {
                      showSnackBar(context, "OTP Resent");
                    },
                    child: Text(
                      "Resend OTP",
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
