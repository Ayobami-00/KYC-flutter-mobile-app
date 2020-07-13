import 'dart:io';

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

class ProfileImageFile extends ValueObject<File> {
  @override
  final Either<ValueFailure<File>, File> value;

  factory ProfileImageFile(File input) {
    assert(input != null);
    return ProfileImageFile._(right(input));
  }

  const ProfileImageFile._(this.value);
}

class PassportDocumentFile extends ValueObject<File> {
  @override
  final Either<ValueFailure<File>, File> value;

  factory PassportDocumentFile(File input) {
    assert(input != null);
    return PassportDocumentFile._(right(input));
  }

  const PassportDocumentFile._(this.value);
}

class UtilityBillFile extends ValueObject<File> {
  @override
  final Either<ValueFailure<File>, File> value;

  factory UtilityBillFile (File input) {
    assert(input != null);
    return UtilityBillFile._(right(input));
  }

  const UtilityBillFile._(this.value);
}


class KycLevel extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory KycLevel(int input) {
    assert(input != null);
    return KycLevel._(
      validateIntNotEmpty(input),
    );
  }

  const KycLevel._(this.value);
}