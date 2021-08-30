import 'dart:convert';

import 'package:partner_quicpik/models/user_data.dart';
import 'package:http/http.dart' as http;
import 'package:partner_quicpik/utils/app_utils.dart';

String remoteUrl = "/register";
Future<UserData> registerUser(
    {String? name,
    String? email,
    String? age,
    String? gender,
    String? phoneNumber}) async {
  String finalUrl = baseUrl + remoteUrl;
  Map<String, dynamic> postableUserData = {
    "name": name,
    "email": email,
    "age": age,
    "gender": gender,
    "phone_number": phoneNumber,
  };
  try {
    final response = await http.post(
      Uri.parse(
        finalUrl,
      ),
      body: postableUserData,
    );
    final decodedData = jsonDecode(response.body);
    return UserData.fromJson(decodedData);
  } catch (e) {
    throw Exception(e);
  }
}
