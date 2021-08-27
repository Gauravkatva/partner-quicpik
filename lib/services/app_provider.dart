import 'package:flutter/foundation.dart';
import 'package:partner_quicpik/services/auth.dart';

class QuicPikProvider with ChangeNotifier {
  AuthMethods authMethods = AuthMethods();
  late String verificationID;

  void updateVerificationID(String id) {
    verificationID = id;
    notifyListeners();
  }
}
