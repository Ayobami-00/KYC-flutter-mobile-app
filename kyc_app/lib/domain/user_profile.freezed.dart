// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserProfileTearOff {
  const _$UserProfileTearOff();

  _UserProfile call(
      {UniqueId uniqueId,
      Username username,
      EmailAddress emailAddress,
      Password password,
      PhoneNumber phoneNumber,
      ProfileImageUrl profileImageUrl,
      KycLevel kycLevel}) {
    return _UserProfile(
      uniqueId: uniqueId,
      username: username,
      emailAddress: emailAddress,
      password: password,
      phoneNumber: phoneNumber,
      profileImageUrl: profileImageUrl,
      kycLevel: kycLevel,
    );
  }
}

// ignore: unused_element
const $UserProfile = _$UserProfileTearOff();

mixin _$UserProfile {
  UniqueId get uniqueId;
  Username get username;
  EmailAddress get emailAddress;
  Password get password;
  PhoneNumber get phoneNumber;
  ProfileImageUrl get profileImageUrl;
  KycLevel get kycLevel;

  $UserProfileCopyWith<UserProfile> get copyWith;
}

abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res>;
  $Res call(
      {UniqueId uniqueId,
      Username username,
      EmailAddress emailAddress,
      Password password,
      PhoneNumber phoneNumber,
      ProfileImageUrl profileImageUrl,
      KycLevel kycLevel});
}

class _$UserProfileCopyWithImpl<$Res> implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  final UserProfile _value;
  // ignore: unused_field
  final $Res Function(UserProfile) _then;

  @override
  $Res call({
    Object uniqueId = freezed,
    Object username = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object phoneNumber = freezed,
    Object profileImageUrl = freezed,
    Object kycLevel = freezed,
  }) {
    return _then(_value.copyWith(
      uniqueId: uniqueId == freezed ? _value.uniqueId : uniqueId as UniqueId,
      username: username == freezed ? _value.username : username as Username,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as ProfileImageUrl,
      kycLevel: kycLevel == freezed ? _value.kycLevel : kycLevel as KycLevel,
    ));
  }
}

abstract class _$UserProfileCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(
          _UserProfile value, $Res Function(_UserProfile) then) =
      __$UserProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId uniqueId,
      Username username,
      EmailAddress emailAddress,
      Password password,
      PhoneNumber phoneNumber,
      ProfileImageUrl profileImageUrl,
      KycLevel kycLevel});
}

class __$UserProfileCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(
      _UserProfile _value, $Res Function(_UserProfile) _then)
      : super(_value, (v) => _then(v as _UserProfile));

  @override
  _UserProfile get _value => super._value as _UserProfile;

  @override
  $Res call({
    Object uniqueId = freezed,
    Object username = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object phoneNumber = freezed,
    Object profileImageUrl = freezed,
    Object kycLevel = freezed,
  }) {
    return _then(_UserProfile(
      uniqueId: uniqueId == freezed ? _value.uniqueId : uniqueId as UniqueId,
      username: username == freezed ? _value.username : username as Username,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as ProfileImageUrl,
      kycLevel: kycLevel == freezed ? _value.kycLevel : kycLevel as KycLevel,
    ));
  }
}

class _$_UserProfile extends _UserProfile {
  const _$_UserProfile(
      {this.uniqueId,
      this.username,
      this.emailAddress,
      this.password,
      this.phoneNumber,
      this.profileImageUrl,
      this.kycLevel})
      : super._();

  @override
  final UniqueId uniqueId;
  @override
  final Username username;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final PhoneNumber phoneNumber;
  @override
  final ProfileImageUrl profileImageUrl;
  @override
  final KycLevel kycLevel;

  @override
  String toString() {
    return 'UserProfile(uniqueId: $uniqueId, username: $username, emailAddress: $emailAddress, password: $password, phoneNumber: $phoneNumber, profileImageUrl: $profileImageUrl, kycLevel: $kycLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserProfile &&
            (identical(other.uniqueId, uniqueId) ||
                const DeepCollectionEquality()
                    .equals(other.uniqueId, uniqueId)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.profileImageUrl, profileImageUrl)) &&
            (identical(other.kycLevel, kycLevel) ||
                const DeepCollectionEquality()
                    .equals(other.kycLevel, kycLevel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uniqueId) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(profileImageUrl) ^
      const DeepCollectionEquality().hash(kycLevel);

  @override
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);
}

abstract class _UserProfile extends UserProfile {
  const _UserProfile._() : super._();
  const factory _UserProfile(
      {UniqueId uniqueId,
      Username username,
      EmailAddress emailAddress,
      Password password,
      PhoneNumber phoneNumber,
      ProfileImageUrl profileImageUrl,
      KycLevel kycLevel}) = _$_UserProfile;

  @override
  UniqueId get uniqueId;
  @override
  Username get username;
  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  PhoneNumber get phoneNumber;
  @override
  ProfileImageUrl get profileImageUrl;
  @override
  KycLevel get kycLevel;
  @override
  _$UserProfileCopyWith<_UserProfile> get copyWith;
}
