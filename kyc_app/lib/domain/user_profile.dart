import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyc_app/domain/authentication/value_objects.dart';
import 'package:kyc_app/domain/core/value_objects.dart';

part 'user_profile.freezed.dart';

@freezed
abstract class UserProfile implements _$UserProfile {
  const UserProfile._();

  const factory UserProfile({
    UniqueId uniqueId,
    Username username,
    EmailAddress emailAddress,
    Password password,
    PhoneNumber phoneNumber,
    ProfileImageUrl profileImageUrl,
    KycLevel kycLevel,
  }) = _UserProfile;

}