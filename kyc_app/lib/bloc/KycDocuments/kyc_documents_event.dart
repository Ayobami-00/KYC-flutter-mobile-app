part of 'kyc_documents_bloc.dart';

@immutable
abstract class KycDocumentsEvent {}

class SaveKycDocuments extends KycDocumentsEvent{
  final File passportDocument;
  final File utilityBill;

  SaveKycDocuments({this.passportDocument, this.utilityBill});
}

