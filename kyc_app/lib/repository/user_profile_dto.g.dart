// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileDto _$_$_UserProfileDtoFromJson(Map<String, dynamic> json) {
  return _$_UserProfileDto(
    username: json['username'] as String,
    emailAddress: json['emailAddress'] as String,
    password: json['password'] as String,
    phoneNumber: json['phoneNumber'] as String,
    profileImageUrl: json['profileImageUrl'] as String,
    kyc_level: json['kyc_level'] as int,
  );
}

Map<String, dynamic> _$_$_UserProfileDtoToJson(_$_UserProfileDto instance) =>
    <String, dynamic>{
      'username': instance.username,
      'emailAddress': instance.emailAddress,
      'password': instance.password,
      'phoneNumber': instance.phoneNumber,
      'profileImageUrl': instance.profileImageUrl,
      'kyc_level': instance.kyc_level,
    };
