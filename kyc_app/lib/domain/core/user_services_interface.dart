import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:kyc_app/domain/authentication/value_objects.dart';
import 'package:kyc_app/domain/user_profile.dart';

abstract class UserServicesInterface {
  Future<void> uploadUserInformation({
    @required UserProfile userProfile,
    @required ProfileImageFile profileImageFile,
  });
  Future<void> updateUserKycInformation({
    @required KycLevel kycLevel,
  });
  Future<UserProfile> getUserInformation();

  Future<void> saveKycDocumentd({
    @required PassportDocumentFile passportDocument,
    @required UtilityBillFile utilityBill,
  });
}