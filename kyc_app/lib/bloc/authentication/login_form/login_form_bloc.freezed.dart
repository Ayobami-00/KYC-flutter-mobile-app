// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginFormEventTearOff {
  const _$LoginFormEventTearOff();

  UsernameChanged userNameChanged(String usernameStr) {
    return UsernameChanged(
      usernameStr,
    );
  }

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  PhoneNumberChanged phoneNumberChanged(String phoneNumberStr) {
    return PhoneNumberChanged(
      phoneNumberStr,
    );
  }

  RegisterWithEmailAndPasswordPressed registerWithEmailAndPasswordPressed() {
    return const RegisterWithEmailAndPasswordPressed();
  }

  SignInWithEmailAndPasswordPressed signInWithEmailAndPasswordPressed() {
    return const SignInWithEmailAndPasswordPressed();
  }
}

// ignore: unused_element
const $LoginFormEvent = _$LoginFormEventTearOff();

mixin _$LoginFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNameChanged(String usernameStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNameChanged(String usernameStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNameChanged(UsernameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNameChanged(UsernameChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    @required Result orElse(),
  });
}

abstract class $LoginFormEventCopyWith<$Res> {
  factory $LoginFormEventCopyWith(
          LoginFormEvent value, $Res Function(LoginFormEvent) then) =
      _$LoginFormEventCopyWithImpl<$Res>;
}

class _$LoginFormEventCopyWithImpl<$Res>
    implements $LoginFormEventCopyWith<$Res> {
  _$LoginFormEventCopyWithImpl(this._value, this._then);

  final LoginFormEvent _value;
  // ignore: unused_field
  final $Res Function(LoginFormEvent) _then;
}

abstract class $UsernameChangedCopyWith<$Res> {
  factory $UsernameChangedCopyWith(
          UsernameChanged value, $Res Function(UsernameChanged) then) =
      _$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String usernameStr});
}

class _$UsernameChangedCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements $UsernameChangedCopyWith<$Res> {
  _$UsernameChangedCopyWithImpl(
      UsernameChanged _value, $Res Function(UsernameChanged) _then)
      : super(_value, (v) => _then(v as UsernameChanged));

  @override
  UsernameChanged get _value => super._value as UsernameChanged;

  @override
  $Res call({
    Object usernameStr = freezed,
  }) {
    return _then(UsernameChanged(
      usernameStr == freezed ? _value.usernameStr : usernameStr as String,
    ));
  }
}

class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged(this.usernameStr) : assert(usernameStr != null);

  @override
  final String usernameStr;

  @override
  String toString() {
    return 'LoginFormEvent.userNameChanged(usernameStr: $usernameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsernameChanged &&
            (identical(other.usernameStr, usernameStr) ||
                const DeepCollectionEquality()
                    .equals(other.usernameStr, usernameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usernameStr);

  @override
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNameChanged(String usernameStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
  }) {
    assert(userNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    return userNameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNameChanged(String usernameStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNameChanged != null) {
      return userNameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNameChanged(UsernameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
  }) {
    assert(userNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    return userNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNameChanged(UsernameChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNameChanged != null) {
      return userNameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements LoginFormEvent {
  const factory UsernameChanged(String usernameStr) = _$UsernameChanged;

  String get usernameStr;
  $UsernameChangedCopyWith<UsernameChanged> get copyWith;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

class _$EmailChangedCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'LoginFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNameChanged(String usernameStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
  }) {
    assert(userNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNameChanged(String usernameStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNameChanged(UsernameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
  }) {
    assert(userNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNameChanged(UsernameChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements LoginFormEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

class _$PasswordChangedCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'LoginFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNameChanged(String usernameStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
  }) {
    assert(userNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNameChanged(String usernameStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNameChanged(UsernameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
  }) {
    assert(userNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNameChanged(UsernameChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements LoginFormEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumberStr});
}

class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements $PhoneNumberChangedCopyWith<$Res> {
  _$PhoneNumberChangedCopyWithImpl(
      PhoneNumberChanged _value, $Res Function(PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as PhoneNumberChanged));

  @override
  PhoneNumberChanged get _value => super._value as PhoneNumberChanged;

  @override
  $Res call({
    Object phoneNumberStr = freezed,
  }) {
    return _then(PhoneNumberChanged(
      phoneNumberStr == freezed
          ? _value.phoneNumberStr
          : phoneNumberStr as String,
    ));
  }
}

class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged(this.phoneNumberStr)
      : assert(phoneNumberStr != null);

  @override
  final String phoneNumberStr;

  @override
  String toString() {
    return 'LoginFormEvent.phoneNumberChanged(phoneNumberStr: $phoneNumberStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneNumberChanged &&
            (identical(other.phoneNumberStr, phoneNumberStr) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumberStr, phoneNumberStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumberStr);

  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNameChanged(String usernameStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
  }) {
    assert(userNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    return phoneNumberChanged(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNameChanged(String usernameStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumberStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNameChanged(UsernameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
  }) {
    assert(userNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNameChanged(UsernameChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements LoginFormEvent {
  const factory PhoneNumberChanged(String phoneNumberStr) =
      _$PhoneNumberChanged;

  String get phoneNumberStr;
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith;
}

abstract class $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordPressedCopyWith(
          RegisterWithEmailAndPasswordPressed value,
          $Res Function(RegisterWithEmailAndPasswordPressed) then) =
      _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

class _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      RegisterWithEmailAndPasswordPressed _value,
      $Res Function(RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPasswordPressed));

  @override
  RegisterWithEmailAndPasswordPressed get _value =>
      super._value as RegisterWithEmailAndPasswordPressed;
}

class _$RegisterWithEmailAndPasswordPressed
    implements RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'LoginFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNameChanged(String usernameStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
  }) {
    assert(userNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNameChanged(String usernameStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNameChanged(UsernameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
  }) {
    assert(userNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNameChanged(UsernameChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressed implements LoginFormEvent {
  const factory RegisterWithEmailAndPasswordPressed() =
      _$RegisterWithEmailAndPasswordPressed;
}

abstract class $SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $SignInWithEmailAndPasswordPressedCopyWith(
          SignInWithEmailAndPasswordPressed value,
          $Res Function(SignInWithEmailAndPasswordPressed) then) =
      _$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

class _$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements $SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  _$SignInWithEmailAndPasswordPressedCopyWithImpl(
      SignInWithEmailAndPasswordPressed _value,
      $Res Function(SignInWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as SignInWithEmailAndPasswordPressed));

  @override
  SignInWithEmailAndPasswordPressed get _value =>
      super._value as SignInWithEmailAndPasswordPressed;
}

class _$SignInWithEmailAndPasswordPressed
    implements SignInWithEmailAndPasswordPressed {
  const _$SignInWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'LoginFormEvent.signInWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNameChanged(String usernameStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
  }) {
    assert(userNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    return signInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNameChanged(String usernameStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNameChanged(UsernameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
  }) {
    assert(userNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(phoneNumberChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNameChanged(UsernameChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPasswordPressed implements LoginFormEvent {
  const factory SignInWithEmailAndPasswordPressed() =
      _$SignInWithEmailAndPasswordPressed;
}

class _$LoginFormStateTearOff {
  const _$LoginFormStateTearOff();

  _LoginFormState call(
      {@required Username username,
      @required EmailAddress emailAddress,
      @required Password password,
      @required PhoneNumber phoneNumber,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _LoginFormState(
      username: username,
      emailAddress: emailAddress,
      password: password,
      phoneNumber: phoneNumber,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $LoginFormState = _$LoginFormStateTearOff();

mixin _$LoginFormState {
  Username get username;
  EmailAddress get emailAddress;
  Password get password;
  PhoneNumber get phoneNumber;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  $LoginFormStateCopyWith<LoginFormState> get copyWith;
}

abstract class $LoginFormStateCopyWith<$Res> {
  factory $LoginFormStateCopyWith(
          LoginFormState value, $Res Function(LoginFormState) then) =
      _$LoginFormStateCopyWithImpl<$Res>;
  $Res call(
      {Username username,
      EmailAddress emailAddress,
      Password password,
      PhoneNumber phoneNumber,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class _$LoginFormStateCopyWithImpl<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  _$LoginFormStateCopyWithImpl(this._value, this._then);

  final LoginFormState _value;
  // ignore: unused_field
  final $Res Function(LoginFormState) _then;

  @override
  $Res call({
    Object username = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object phoneNumber = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as Username,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

abstract class _$LoginFormStateCopyWith<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  factory _$LoginFormStateCopyWith(
          _LoginFormState value, $Res Function(_LoginFormState) then) =
      __$LoginFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Username username,
      EmailAddress emailAddress,
      Password password,
      PhoneNumber phoneNumber,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class __$LoginFormStateCopyWithImpl<$Res>
    extends _$LoginFormStateCopyWithImpl<$Res>
    implements _$LoginFormStateCopyWith<$Res> {
  __$LoginFormStateCopyWithImpl(
      _LoginFormState _value, $Res Function(_LoginFormState) _then)
      : super(_value, (v) => _then(v as _LoginFormState));

  @override
  _LoginFormState get _value => super._value as _LoginFormState;

  @override
  $Res call({
    Object username = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object phoneNumber = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_LoginFormState(
      username: username == freezed ? _value.username : username as Username,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$_LoginFormState implements _LoginFormState {
  const _$_LoginFormState(
      {@required this.username,
      @required this.emailAddress,
      @required this.password,
      @required this.phoneNumber,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(username != null),
        assert(emailAddress != null),
        assert(password != null),
        assert(phoneNumber != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final Username username;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final PhoneNumber phoneNumber;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'LoginFormState(username: $username, emailAddress: $emailAddress, password: $password, phoneNumber: $phoneNumber, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginFormState &&
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
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  _$LoginFormStateCopyWith<_LoginFormState> get copyWith =>
      __$LoginFormStateCopyWithImpl<_LoginFormState>(this, _$identity);
}

abstract class _LoginFormState implements LoginFormState {
  const factory _LoginFormState(
          {@required
              Username username,
          @required
              EmailAddress emailAddress,
          @required
              Password password,
          @required
              PhoneNumber phoneNumber,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_LoginFormState;

  @override
  Username get username;
  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  PhoneNumber get phoneNumber;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  _$LoginFormStateCopyWith<_LoginFormState> get copyWith;
}
