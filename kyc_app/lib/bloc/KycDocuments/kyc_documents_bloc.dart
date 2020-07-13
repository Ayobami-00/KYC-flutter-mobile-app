import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kyc_app/domain/authentication/value_objects.dart';
import 'package:kyc_app/domain/core/user_services_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'kyc_documents_event.dart';
part 'kyc_documents_state.dart';

@injectable
class KycDocumentsBloc extends Bloc<KycDocumentsEvent, KycDocumentsState> {
  final UserServicesInterface _userServicesInterface;

  KycDocumentsBloc(this._userServicesInterface) : super(null);

  @override
  Stream<KycDocumentsState> mapEventToState(KycDocumentsEvent event) async* {
    if (event is SaveKycDocuments) {
      yield KycDocumentsLoading();

      var failureOrSuccess = await _userServicesInterface.saveKycDocumentd(
          passportDocument: PassportDocumentFile(event.passportDocument),
          utilityBill: UtilityBillFile(
            event.utilityBill,
          ));
      yield KycDocumentsSaved();
    }
  }
}
