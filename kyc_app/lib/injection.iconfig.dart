// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:kyc_app/repository/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kyc_app/repository/core/user_services_impl.dart';
import 'package:kyc_app/domain/core/user_services_interface.dart';
import 'package:kyc_app/repository/authentication/firebase_auth_impl.dart';
import 'package:kyc_app/domain/authentication/auth_interface.dart';
import 'package:kyc_app/bloc/KycDocuments/kyc_documents_bloc.dart';
import 'package:kyc_app/bloc/authentication/login_form/login_form_bloc.dart';
import 'package:kyc_app/bloc/profile/profile_bloc.dart';
import 'package:kyc_app/bloc/authentication/auth_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<UserServicesInterface>(
      () => UserServicesImpl(g<FirebaseAuth>()));
  g.registerLazySingleton<AuthInterface>(
      () => FirebaseAuthImpl(g<FirebaseAuth>()));
  g.registerFactory<KycDocumentsBloc>(
      () => KycDocumentsBloc(g<UserServicesInterface>()));
  g.registerFactory<LoginFormBloc>(
      () => LoginFormBloc(g<AuthInterface>(), g<UserServicesInterface>()));
  g.registerFactory<ProfileBloc>(() => ProfileBloc(g<UserServicesInterface>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<AuthInterface>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
