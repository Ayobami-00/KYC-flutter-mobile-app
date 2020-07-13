// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserProfileDto _$UserProfileDtoFromJson(Map<String, dynamic> json) {
  return _UserProfileDto.fromJson(json);
}

class _$UserProfileDtoTearOff {
  const _$UserProfileDtoTearOff();

  _UserProfileDto call(
      {@JsonKey(ignore: true) String id,
      String username,
      String emailAddress,
      String password,
      String phoneNumber,
      String profileImageUrl,
      int kyc_level}) {
    return _UserProfileDto(
      id: id,
      username: username,
      emailAddress: emailAddress,
      password: password,
      phoneNumber: phoneNumber,
      profileImageUrl: profileImageUrl,
      kyc_level: kyc_level,
    );
  }
}

// ignore: unused_element
const $UserProfileDto = _$UserProfileDtoTearOff();

mixin _$UserProfileDto {
  @JsonKey(ignore: true)
  String get id;
  String get username;
  String get emailAddress;
  String get password;
  String get phoneNumber;
  String get profileImageUrl;
  int get kyc_level;

  Map<String, dynamic> toJson();
  $UserProfileDtoCopyWith<UserProfileDto> get copyWith;
}

abstract class $UserProfileDtoCopyWith<$Res> {
  factory $UserProfileDtoCopyWith(
          UserProfileDto value, $Res Function(UserProfileDto) then) =
      _$UserProfileDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String username,
      String emailAddress,
      String password,
      String phoneNumber,
      String profileImageUrl,
      int kyc_level});
}

class _$UserProfileDtoCopyWithImpl<$Res>
    implements $UserProfileDtoCopyWith<$Res> {
  _$UserProfileDtoCopyWithImpl(this._value, this._then);

  final UserProfileDto _value;
  // ignore: unused_field
  final $Res Function(UserProfileDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object phoneNumber = freezed,
    Object profileImageUrl = freezed,
    Object kyc_level = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      username: username == freezed ? _value.username : username as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as String,
      kyc_level: kyc_level == freezed ? _value.kyc_level : kyc_level as int,
    ));
  }
}

abstract class _$UserProfileDtoCopyWith<$Res>
    implements $UserProfileDtoCopyWith<$Res> {
  factory _$UserProfileDtoCopyWith(
          _UserProfileDto value, $Res Function(_UserProfileDto) then) =
      __$UserProfileDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String username,
      String emailAddress,
      String password,
      String phoneNumber,
      String profileImageUrl,
      int kyc_level});
}

class __$UserProfileDtoCopyWithImpl<$Res>
    extends _$UserProfileDtoCopyWithImpl<$Res>
    implements _$UserProfileDtoCopyWith<$Res> {
  __$UserProfileDtoCopyWithImpl(
      _UserProfileDto _value, $Res Function(_UserProfileDto) _then)
      : super(_value, (v) => _then(v as _UserProfileDto));

  @override
  _UserProfileDto get _value => super._value as _UserProfileDto;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object phoneNumber = freezed,
    Object profileImageUrl = freezed,
    Object kyc_level = freezed,
  }) {
    return _then(_UserProfileDto(
      id: id == freezed ? _value.id : id as String,
      username: username == freezed ? _value.username : username as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl as String,
      kyc_level: kyc_level == freezed ? _value.kyc_level : kyc_level as int,
    ));
  }
}

@JsonSerializable()
class _$_UserProfileDto extends _UserProfileDto {
  const _$_UserProfileDto(
      {@JsonKey(ignore: true) this.id,
      this.username,
      this.emailAddress,
      this.password,
      this.phoneNumber,
      this.profileImageUrl,
      this.kyc_level})
      : super._();

  factory _$_UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserProfileDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String username;
  @override
  final String emailAddress;
  @override
  final String password;
  @override
  final String phoneNumber;
  @override
  final String profileImageUrl;
  @override
  final int kyc_level;

  @override
  String toString() {
    return 'UserProfileDto(id: $id, username: $username, emailAddress: $emailAddress, password: $password, phoneNumber: $phoneNumber, profileImageUrl: $profileImageUrl, kyc_level: $kyc_level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserProfileDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
            (identical(other.kyc_level, kyc_level) ||
                const DeepCollectionEquality()
                    .equals(other.kyc_level, kyc_level)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(profileImageUrl) ^
      const DeepCollectionEquality().hash(kyc_level);

  @override
  _$UserProfileDtoCopyWith<_UserProfileDto> get copyWith =>
      __$UserProfileDtoCopyWithImpl<_UserProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserProfileDtoToJson(this);
  }
}

abstract class _UserProfileDto extends UserProfileDto {
  const _UserProfileDto._() : super._();
  const factory _UserProfileDto(
      {@JsonKey(ignore: true) String id,
      String username,
      String emailAddress,
      String password,
      String phoneNumber,
      String profileImageUrl,
      int kyc_level}) = _$_UserProfileDto;

  factory _UserProfileDto.fromJson(Map<String, dynamic> json) =
      _$_UserProfileDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get username;
  @override
  String get emailAddress;
  @override
  String get password;
  @override
  String get phoneNumber;
  @override
  String get profileImageUrl;
  @override
  int get kyc_level;
  @override
  _$UserProfileDtoCopyWith<_UserProfileDto> get copyWith;
}
