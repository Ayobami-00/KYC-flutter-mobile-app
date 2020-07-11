import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kyc_app/domain/authentication/auth_failure.dart';
import 'package:kyc_app/domain/authentication/auth_interface.dart';
import 'package:kyc_app/domain/authentication/value_objects.dart';

part 'login_form_event.dart';
part 'login_form_state.dart';

part 'login_form_bloc.freezed.dart';

@injectable
class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final AuthInterface _authInterface;

  LoginFormBloc(this._authInterface) : super(null);

  @override
  LoginFormState get initialState => LoginFormState.initial();

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
      registerWithEmailAndPasswordPressed: (e) async* {
        yield* _performSignUp();
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _performSignIn();
      },
    );
  }

  Stream<LoginFormState> _performSignIn() async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

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

    if (isUsernameValid && isEmailValid && isPasswordValid && isPhoneNumberValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await _authInterface.registerWithEmailAndPassword(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}




