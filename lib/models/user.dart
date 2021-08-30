import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User({
    this.id,
    this.name,
    this.email,
    this.age,
    this.gender,
    this.phoneNumber,
    this.date,
  });
  String? id;
  String? name;
  String? email;
  String? age;
  String? gender;
  String? phoneNumber;
  String? date;
  factory User.fromJson(json) => _$UserFromJson(json);
  toJson() => _$UserToJson(this);
}
