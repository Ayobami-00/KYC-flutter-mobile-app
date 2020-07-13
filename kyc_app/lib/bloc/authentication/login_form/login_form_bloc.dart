import 'dart:io';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kyc_app/domain/authentication/auth_failure.dart';
import 'package:kyc_app/domain/authentication/auth_interface.dart';
import 'package:kyc_app/domain/authentication/value_objects.dart';
import 'package:kyc_app/domain/core/user_services_interface.dart';
import 'package:kyc_app/domain/user_profile.dart';

part 'login_form_event.dart';
part 'login_form_state.dart';

part 'login_form_bloc.freezed.dart';

@injectable
class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final AuthInterface _authInterface;
  final UserServicesInterface _userServicesInterface;

  LoginFormBloc(this._authInterface, this._userServicesInterface)
      : super(LoginFormState.initial());

  @override
  Stream<LoginFormState> mapEventToState(
    LoginFormEvent event,
  ) async* {
    yield* event.map(
      userNameChanged: (e) async* {
        yield state.copyWith(
          username: Username(e.usernameStr),
          authFailureOrSuccessOption: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          phoneNumber: PhoneNumber(e.phoneNumberStr),
          authFailureOrSuccessOption: none(),
        );
      },
      profileImageFileChanged: (e) async* {
        yield state.copyWith(
          profileImageFile: ProfileImageFile(e.profileImageFile),
          authFailureOrSuccessOption: none(),
        );
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        yield* _performSignUp();
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _performSignIn();
      },
      resetLoginState: (e) async* {
        yield LoginFormState.initial();
      },
    );
  }

  Stream<LoginFormState> _performSignIn() async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    print(state.emailAddress);

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await _authInterface.signInWithEmailAndPassword(
        emailAddress: state.emailAddress,
        password: state.password,
      );

      //
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<LoginFormState> _performSignUp() async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    final isUsernameValid = state.username.isValid();
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    final isPhoneNumberValid = state.phoneNumber.isValid();

    if (isUsernameValid &&
        isEmailValid &&
        isPasswordValid &&
        isPhoneNumberValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      final failureOrSuccess =
          await _authInterface.registerWithEmailAndPassword(
        emailAddress: state.emailAddress,
        password: state.password,
      );

      UserProfile userprofile = UserProfile(
        username: state.username,
        emailAddress: state.emailAddress,
        password: state.password,
        phoneNumber: state.phoneNumber,
        kycLevel: KycLevel(0),
      );

      bool successful;
      failureOrSuccess.fold((l) => null, (_) async {
        Future.delayed(const Duration(seconds: 5), () {});
        successful = true;
      });

      if (successful) {
        Future.delayed(const Duration(seconds: 5), () {});
        await _userServicesInterface.uploadUserInformation(
            userProfile: userprofile, profileImageFile: state.profileImageFile);
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: some(failureOrSuccess),
        );
      }
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: none(),
    );
  }
}
