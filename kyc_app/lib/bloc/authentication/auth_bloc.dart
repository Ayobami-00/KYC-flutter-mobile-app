import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kyc_app/domain/authentication/auth_interface.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthInterface _authInterface;

  AuthBloc(this._authInterface) : super(null);

  @override
  AuthState get initialState => const AuthState.initial();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      checkUserState: (e) async* {
        final userOption = await _authInterface.getSignedInUser();
        yield userOption.fold(
          () => const AuthState.unauthenticated(),
          (_) => const AuthState.authenticated(),
        );
      },
      signOut: (e) async* {
        await _authInterface.signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}