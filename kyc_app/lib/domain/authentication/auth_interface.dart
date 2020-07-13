import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:kyc_app/domain/authentication/auth_failure.dart';
import 'package:kyc_app/domain/authentication/user.dart';
import 'package:kyc_app/domain/authentication/value_objects.dart';


abstract class AuthInterface {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Option<bool>> getEmailVerificationStatus();
  Future<void> signOut();
}