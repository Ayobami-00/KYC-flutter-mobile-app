import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kyc_app/domain/authentication/value_objects.dart';
import 'package:kyc_app/repository/user_profile_dto.dart';
import 'package:kyc_app/domain/core/user_services_interface.dart';
import 'package:kyc_app/domain/user_profile.dart';
import 'package:kyc_app/repository/user_profile_dto.dart';

@LazySingleton(as: UserServicesInterface)
class UserServicesImpl implements UserServicesInterface {
  final FirebaseAuth _firebaseAuth;
  Firestore _firestore = Firestore.instance;
  FirebaseStorage _firebaseStorage = FirebaseStorage.instance;
  String usersCollection = 'users';
  String documentsCollection = 'documents';

  UserServicesImpl(this._firebaseAuth);

  @override
  Future<void> uploadUserInformation({
    UserProfile userProfile,
    ProfileImageFile profileImageFile,
  }) async {
    UserProfileDto userProfileDto = UserProfileDto.fromDomain(userProfile);
    String user_id = await _firebaseAuth
        .currentUser()
        .then((firebaseUser) => firebaseUser.uid);

    // upload image file to cloud storage and get download url
    StorageReference storageRef = _firebaseStorage
        .ref()
        .child(usersCollection)
        .child("$user_id")
        .child("$user_id.jpg");
    StorageUploadTask uploadTask =
        storageRef.putFile(profileImageFile.getOrCrash());

    String profileImageUrl =
        await (await uploadTask.onComplete).ref.getDownloadURL();

    _firestore.collection(usersCollection).document(user_id).setData({
      'user_id': user_id,
      'username': userProfileDto.username,
      'emailAddress': userProfileDto.emailAddress,
      'password': userProfileDto.password,
      'phoneNumber': userProfileDto.phoneNumber,
      'profileImageUrl': profileImageUrl,
      'kyc_level': userProfileDto.kyc_level,
    });
  }

  Future<void> updateUserKycInformation({@required KycLevel kycLevel}) async {
    String user_id = await _firebaseAuth
        .currentUser()
        .then((firebaseUser) => firebaseUser.uid);
    return _firestore
        .collection(usersCollection)
        .document(user_id)
        .updateData({'kyc_level': kycLevel.getOrCrash()});
  }

  Future<UserProfile> getUserInformation() async {
    String user_id = await _firebaseAuth
        .currentUser()
        .then((firebaseUser) => firebaseUser.uid);
    print(user_id);
    UserProfile response;
    await _firestore
        .collection(usersCollection)
        .document(user_id)
        .get()
        .then((value) {
      // print(UserProfileDto.fromFirestore(value).toDomain());
      response = UserProfileDto.fromFirestore(value).toDomain();
    });
    print(response);
    return response;
  }

  @override
  Future<void> saveKycDocumentd(
      {PassportDocumentFile passportDocument,
      UtilityBillFile utilityBill}) async {
    String user_id = await _firebaseAuth
        .currentUser()
        .then((firebaseUser) => firebaseUser.uid);

    // upload passportDocument to cloud storage and get download url
    StorageReference storageRef = _firebaseStorage
        .ref()
        .child(documentsCollection)
        .child("$user_id")
        .child("passport_document.jpg");
    StorageUploadTask uploadTask =
        storageRef.putFile(passportDocument.getOrCrash());

    String passportDocumentUrl =
        await (await uploadTask.onComplete).ref.getDownloadURL();

      // upload utility bill to cloud storage and get download url
    StorageReference storageRef2 = _firebaseStorage
        .ref()
        .child(documentsCollection)
        .child("$user_id")
        .child("utility_bill.jpg");
    StorageUploadTask uploadTask2 =
        storageRef.putFile(utilityBill.getOrCrash());

    String utilityBillUrl =
        await (await uploadTask2.onComplete).ref.getDownloadURL();
      
    _firestore.collection(usersCollection).document(user_id).setData({
      'user_id': user_id,
      'passportDocumentUrl': passportDocumentUrl,
      'utilityBillUrl': utilityBillUrl,
      'verification_status': false,

    });
  }
}
