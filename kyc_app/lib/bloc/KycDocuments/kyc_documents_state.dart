part of 'kyc_documents_bloc.dart';

@immutable
abstract class KycDocumentsState {}

class KycDocumentsInitial extends KycDocumentsState {}

class KycDocumentsSaved extends KycDocumentsState {}

class KycDocumentsLoading extends KycDocumentsState {}