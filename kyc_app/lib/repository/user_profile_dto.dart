import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyc_app/domain/authentication/value_objects.dart';
import 'package:kyc_app/domain/core/value_objects.dart';
import 'package:kyc_app/domain/user_profile.dart';

part 'user_profile_dto.freezed.dart';
part 'user_profile_dto.g.dart';

@freezed
abstract class UserProfileDto implements _$UserProfileDto{
  const UserProfileDto._();

  const factory UserProfileDto({
    @JsonKey(ignore: true) String id,
    String  username,
    String  emailAddress,
    String  password,
    String  phoneNumber,
    String  profileImageUrl,
    int     kyc_level,
  }) = _UserProfileDto;

  factory UserProfileDto.fromDomain(UserProfile userProfile) {
    return UserProfileDto(
      username: userProfile.username.getOrCrash(),
      emailAddress: userProfile.emailAddress.getOrCrash(),
      password: userProfile.password.getOrCrash(),
      phoneNumber: userProfile.phoneNumber.getOrCrash(),
      kyc_level: userProfile.kycLevel.getOrCrash(),
    );
  }

  UserProfile toDomain() {
    return UserProfile(
      uniqueId: UniqueId.fromUniqueString(id),
      username: Username(username),
      emailAddress: EmailAddress(emailAddress),
      password: Password(password),
      phoneNumber: PhoneNumber(phoneNumber),
      profileImageUrl: ProfileImageUrl(profileImageUrl),
      kycLevel: KycLevel(kyc_level)
    );
  }

  factory UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDtoFromJson(json);

  factory UserProfileDto.fromFirestore(DocumentSnapshot doc) {
    return UserProfileDto.fromJson(doc.data).copyWith(id: doc.documentID);
  }

}