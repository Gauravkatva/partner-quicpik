import 'package:flutter/material.dart';
import 'package:partner_quicpik/utils/app_utils.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OTPVerification extends StatelessWidget {
  OTPVerification({
    this.focusNode,
    Key? key,
    required this.onFieldChanged,
    required this.pinController,
  }) : super(key: key);
  final TextEditingController pinController;
  final void Function(String?) onFieldChanged;

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
        horizontal: 40,
      ),
      child: PinPut(
        onChanged: (value) {
          onFieldChanged(value);
        },
        controller: pinController,
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
        textStyle: themeData(context).textTheme.bodyText1!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
        focusNode: focusNode,
        //obscureText: "*",
      ),
    );
  }
}
