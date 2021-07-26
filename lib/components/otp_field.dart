import 'package:flutter/material.dart';
import 'package:partner_quicpik/utils/app_utils.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OTPVerification extends StatelessWidget {
  OTPVerification({this.focusNode, Key? key}) : super(key: key);

  final TextEditingController _otpTextEditingController =
      TextEditingController();
  final FocusNode? focusNode;
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 60,
      ),
      child: PinPut(
        controller: _otpTextEditingController,
        separator: SizedBox(
          width: 5,
        ),
        preFilledWidget: Center(
          child: Text(
            "-",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        fieldsCount: 4,
        selectedFieldDecoration: _pinPutDecoration.copyWith(
          color: Colors.white,
        ),
        submittedFieldDecoration: _pinPutDecoration.copyWith(
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        followingFieldDecoration: _pinPutDecoration,
        textStyle: themeData(context).textTheme.bodyText1!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
        focusNode: focusNode,
      ),
    );
  }
}
