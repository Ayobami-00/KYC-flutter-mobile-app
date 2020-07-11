import 'package:dartz/dartz.dart';
import 'package:kyc_app/domain/core/failures.dart';
import 'package:kyc_app/domain/core/value_objects.dart';
import 'package:kyc_app/domain/core/value_validators.dart';

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String input) {
    assert(input != null);
    return Username._(
      validateStringNotEmpty(input),
    );
  }

  const Username._(this.value);
}

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input) {
    assert(input != null);
    return PhoneNumber._(
      validateStringNotEmpty(input),
    );
  }

  const PhoneNumber._(this.value);
}

class ProfileImageUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProfileImageUrl(String input) {
    assert(input != null);
    return ProfileImageUrl._(
      validateStringNotEmpty(input),
    );
  }

  const ProfileImageUrl._(this.value);
}
