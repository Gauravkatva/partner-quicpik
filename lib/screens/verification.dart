import 'package:flutter/material.dart';
import 'package:partner_quicpik/components/app_clippers.dart';
import 'package:partner_quicpik/components/button.dart';
import 'package:partner_quicpik/components/otp_field.dart';
import 'package:partner_quicpik/services/app_provider.dart';
import 'package:partner_quicpik/services/auth.dart';
import 'package:partner_quicpik/utils/app_utils.dart';
import 'package:partner_quicpik/utils/routes.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:provider/provider.dart';

class Verification extends StatefulWidget {
  Verification({this.fromSignup = false, Key? key}) : super(key: key);
  final bool fromSignup;

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  final FocusNode focusNode = FocusNode();
  final TextEditingController _pinController = TextEditingController();
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _appProvider = Provider.of<QuicPikProvider>(context, listen: false);
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
                  child: Image.asset("assets/verify.png"),
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
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 40,
                    ),
                    child: PinPut(
                      controller: _pinController,
                      separator: SizedBox(
                        width: 6,
                      ),
                      preFilledWidget: Center(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      fieldsCount: 6,
                      selectedFieldDecoration: _pinPutDecoration.copyWith(
                        color: Colors.white,
                      ),
                      submittedFieldDecoration: _pinPutDecoration.copyWith(
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                      ),
                      followingFieldDecoration: _pinPutDecoration,
                      textStyle:
                          themeData(context).textTheme.bodyText1!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                      focusNode: focusNode,
                    ),
                  ),
                  AppButton(
                      buttonTitle: "Verify",
                      onPressed: () async {
                        print(_pinController.text);
                        _appProvider.authMethods.createUserFromCredential(
                            _pinController.text, context);
                        showSnackBar(context, "OTP Verified");
                        if (widget.fromSignup) {
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
