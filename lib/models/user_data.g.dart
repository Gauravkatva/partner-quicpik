// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return UserData(
    status: json['status'] as bool?,
    statusCode: json['statusCode'] as int?,
    message: json['message'] as String?,
    users: (json['userdata'] as List<dynamic>?)
        ?.map((e) => User.fromJson(e))
        .toList(),
  );
}

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'status': instance.status,
      'statusCode': instance.statusCode,
      'message': instance.message,
      'userdata': instance.users?.map((e) => e.toJson()).toList(),
    };
