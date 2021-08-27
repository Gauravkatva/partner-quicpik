import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:partner_quicpik/services/app_provider.dart';
import 'package:provider/provider.dart';

class AuthMethods {
  FirebaseAuth _auth = FirebaseAuth.instance;
  //late String _verificationId;

  //phone auth functions

  PhoneVerificationCompleted _phoneVerificationCompleted =
      (PhoneAuthCredential credential) async {};

  PhoneVerificationFailed _phoneVerificationFailed =
      (FirebaseAuthException authException) async {
    print(
        'Phone number verification failed. Code: ${authException.code}. Message: ${authException.message}');
  };

  PhoneCodeSent _phoneCodeSent =
      (String verificationID, int? resendToken) async {
    print("Code Sent Successfully");
  };

  PhoneCodeAutoRetrievalTimeout _phoneCodeAutoRetrievalTimeout =
      (String verificationID) async {};

  Future<void> verifyUserPhoneNumber(
      String phoneNumber, BuildContext context) async {
    final _appProvider = Provider.of<QuicPikProvider>(context, listen: false);

    return _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: _phoneVerificationCompleted,
      verificationFailed: _phoneVerificationFailed,
      codeSent: (String verificationID, int? resendToken) async {
        print("Code Sent Successfully");
        print(verificationID);
        _appProvider.updateVerificationID(verificationID);
      },
      codeAutoRetrievalTimeout: _phoneCodeAutoRetrievalTimeout,
    );
  }

  void createUserFromCredential(String smsCode, BuildContext context) async {
    print("$smsCode from create user");
    final _appProvider = Provider.of<QuicPikProvider>(context, listen: false);
    print("${_appProvider.verificationID} from create user");
    PhoneAuthCredential _phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: _appProvider.verificationID, smsCode: smsCode);
    try {
      final userCredential =
          await _auth.signInWithCredential(_phoneAuthCredential);
      print(userCredential.credential);
    } on FirebaseAuthException catch (e) {
      print("error occured at createUser");
      print(e.message);
    }
  }
}
