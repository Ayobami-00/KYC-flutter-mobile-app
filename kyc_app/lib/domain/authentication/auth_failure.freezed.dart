// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  ServerError serverError() {
    return const ServerError();
  }

  EmailAlreadyInUse emailAlreadyInUse() {
    return const EmailAlreadyInUse();
  }

  InvalidEmailAndPasswordCombination invalidEmailAndPasswordCombination() {
    return const InvalidEmailAndPasswordCombination();
  }

  EmailNotVerified emailNotVerified() {
    return const EmailNotVerified();
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result emailNotVerified(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result emailNotVerified(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result emailNotVerified(EmailNotVerified value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result emailNotVerified(EmailNotVerified value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result emailNotVerified(),
  }) {
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(emailNotVerified != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result emailNotVerified(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result emailNotVerified(EmailNotVerified value),
  }) {
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(emailNotVerified != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result emailNotVerified(EmailNotVerified value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

abstract class $EmailAlreadyInUseCopyWith<$Res> {
  factory $EmailAlreadyInUseCopyWith(
          EmailAlreadyInUse value, $Res Function(EmailAlreadyInUse) then) =
      _$EmailAlreadyInUseCopyWithImpl<$Res>;
}

class _$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlreadyInUseCopyWith<$Res> {
  _$EmailAlreadyInUseCopyWithImpl(
      EmailAlreadyInUse _value, $Res Function(EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUse));

  @override
  EmailAlreadyInUse get _value => super._value as EmailAlreadyInUse;
}

class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result emailNotVerified(),
  }) {
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(emailNotVerified != null);
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result emailNotVerified(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result emailNotVerified(EmailNotVerified value),
  }) {
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(emailNotVerified != null);
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result emailNotVerified(EmailNotVerified value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

abstract class $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  factory $InvalidEmailAndPasswordCombinationCopyWith(
          InvalidEmailAndPasswordCombination value,
          $Res Function(InvalidEmailAndPasswordCombination) then) =
      _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

class _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  _$InvalidEmailAndPasswordCombinationCopyWithImpl(
      InvalidEmailAndPasswordCombination _value,
      $Res Function(InvalidEmailAndPasswordCombination) _then)
      : super(_value, (v) => _then(v as InvalidEmailAndPasswordCombination));

  @override
  InvalidEmailAndPasswordCombination get _value =>
      super._value as InvalidEmailAndPasswordCombination;
}

class _$InvalidEmailAndPasswordCombination
    implements InvalidEmailAndPasswordCombination {
  const _$InvalidEmailAndPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result emailNotVerified(),
  }) {
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(emailNotVerified != null);
    return invalidEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result emailNotVerified(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result emailNotVerified(EmailNotVerified value),
  }) {
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(emailNotVerified != null);
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result emailNotVerified(EmailNotVerified value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPasswordCombination implements AuthFailure {
  const factory InvalidEmailAndPasswordCombination() =
      _$InvalidEmailAndPasswordCombination;
}

abstract class $EmailNotVerifiedCopyWith<$Res> {
  factory $EmailNotVerifiedCopyWith(
          EmailNotVerified value, $Res Function(EmailNotVerified) then) =
      _$EmailNotVerifiedCopyWithImpl<$Res>;
}

class _$EmailNotVerifiedCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailNotVerifiedCopyWith<$Res> {
  _$EmailNotVerifiedCopyWithImpl(
      EmailNotVerified _value, $Res Function(EmailNotVerified) _then)
      : super(_value, (v) => _then(v as EmailNotVerified));

  @override
  EmailNotVerified get _value => super._value as EmailNotVerified;
}

class _$EmailNotVerified implements EmailNotVerified {
  const _$EmailNotVerified();

  @override
  String toString() {
    return 'AuthFailure.emailNotVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailNotVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAndPasswordCombination(),
    @required Result emailNotVerified(),
  }) {
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(emailNotVerified != null);
    return emailNotVerified();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAndPasswordCombination(),
    Result emailNotVerified(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailNotVerified != null) {
      return emailNotVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
    @required Result emailNotVerified(EmailNotVerified value),
  }) {
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    assert(emailNotVerified != null);
    return emailNotVerified(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    Result emailNotVerified(EmailNotVerified value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailNotVerified != null) {
      return emailNotVerified(this);
    }
    return orElse();
  }
}

abstract class EmailNotVerified implements AuthFailure {
  const factory EmailNotVerified() = _$EmailNotVerified;
}
