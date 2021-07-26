import 'package:json_annotation/json_annotation.dart';
import 'package:partner_quicpik/models/user.dart';

part 'user_data.g.dart';

@JsonSerializable(explicitToJson: true)
class UserData {
  UserData({
    this.status,
    this.statusCode,
    this.message,
    this.users,
  });

  bool? status;
  int? statusCode;
  String? message;
  List<User>? users;

  factory UserData.fromJson(json) => _$UserDataFromJson(json);
  toJson() => _$UserDataToJson(this);
}
