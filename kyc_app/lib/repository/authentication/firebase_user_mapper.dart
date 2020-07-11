import 'package:firebase_auth/firebase_auth.dart';
import 'package:kyc_app/domain/authentication/user.dart';
import 'package:kyc_app/domain/core/value_objects.dart';

extension FirebaseUserDomainExtension on FirebaseUser {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}