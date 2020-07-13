import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kyc_app/domain/authentication/auth_failure.dart';
import 'package:kyc_app/domain/authentication/auth_interface.dart';
import 'package:kyc_app/domain/authentication/user.dart';
import 'package:kyc_app/domain/authentication/value_objects.dart';
import './firebase_user_mapper.dart';

@LazySingleton(as: AuthInterface)
class FirebaseAuthImpl implements AuthInterface {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthImpl(
    this._firebaseAuth,
  );

  @override
  Future<Option<User>> getSignedInUser() => _firebaseAuth
      .currentUser()
      .then((firebaseUser) => optionOf(firebaseUser?.toDomain()));

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      _firebaseAuth
          .createUserWithEmailAndPassword(
            email: emailAddressStr,
            password: passwordStr,
          )
          .then((value) => value.user.sendEmailVerification());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      var _authResult = await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return(right(unit));
      // if (_authResult.user.isEmailVerified) {
      //   //Verified
      //   return right(unit);
      // } else {
      //   left(const AuthFailure.emailNotVerified());

      // }
      
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<void> signOut() async => await _firebaseAuth.signOut();

  @override
  Future<Option<bool>> getEmailVerificationStatus() {
    return _firebaseAuth
      .currentUser().then((FirebaseUser firebaseUser) {
        if(firebaseUser != null){
          return optionOf(firebaseUser.isEmailVerified);
        }
        else{
          return optionOf(null);
        }

      });
  }
}
