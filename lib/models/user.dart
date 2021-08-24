import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User({
    this.name,
    this.email,
    this.age,
    this.gender,
    this.phoneNumber,
  });

  String? name;
  String? email;
  String? age;
  String? gender;
  String? phoneNumber;

  factory User.fromJson(json) => _$UserFromJson(json);
  toJson() => _$UserToJson(this);

  @override
  String toString() {
    final string = "$name, $email, $age, $gender, $phoneNumber";
    return string;
  }
}
