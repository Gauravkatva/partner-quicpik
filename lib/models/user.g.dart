// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['_id'] as String?,
    name: json['name'] as String?,
    email: json['email'] as String?,
    age: json['age'] as String?,
    gender: json['gender'] as String?,
    phoneNumber: json['phone_number'] as String?,
    date: json['date'] as String?,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'age': instance.age,
      'gender': instance.gender,
      'phone_number': instance.phoneNumber,
      'date': instance.date,
    };
